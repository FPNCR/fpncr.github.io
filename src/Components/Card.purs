module Components.Card where

import Concur.Core.Types (Widget)
import Concur.React (HTML)
import Concur.React.DOM as D
import Concur.React.MUI.DOM as MD
import Concur.React.Props as P
import Control.Bind (bind)
import Data.BooleanAlgebra (not)
import Data.Functor ((<$))
import React (ReactElement)
import React.DOM as RD
import React.DOM.Props as RP
import Record (merge)

-- Alias P.unsafeMkProp for convenience
infixr 9 P.unsafeMkProp as :=

styles =
  -- { card: {
  --     height: "100%",
  --     display: "flex",
  --     flexDirection: "column"
  --   }
  -- }
  { card:
      { maxWidth: 345 }
  , media:
      { height: 0
      , paddingTop: "56.25%" -- 16:9
      }
  , expand:
      { transform: "rotate(-90deg)"
      , marginLeft: "auto"
      , transition: "0.2s"
      }
  , expandOpen:
      { transform: "rotate(0deg)" }
  }

data CardAction = ExpandClick

type Card =
  { title :: String
  , date :: String
  , avatar :: ReactElement
  , media :: String
  , blurb :: String
  , details :: forall a. Array (Widget HTML a)
  }

card :: Card -> forall a. Widget HTML a
card c = go false
  where
  go expanded = do
    let expandButtonStyle =
          if expanded
            then merge styles.expandOpen styles.expand
            else styles.expand
    axn <- MD.card [ P.style styles.card ]
      [ MD.cardHeader
          [ P.title c.title
          , "subheader" := c.date
          , "avatar" := c.avatar
          ]
          []
      , MD.cardMedia [ P.style styles.media, "image" := c.media, P.title c.title ]
          []
      , MD.cardContent []
          [ MD.typography [ "variant" := "body2", "color" := "textSecondary", "component" := "p" ]
              [ D.text c.blurb
              ]
          ]
      , MD.cardActions [ "disableSpacing" := true ]
          [ MD.iconButton [ "aria-label" := "event page" ]
              [ MD.icon [] [D.text "event"]
              ]
          , MD.iconButton [ "aria-label" := "share" ]
              [ MD.icon [] [D.text "share"]
              ]
          , MD.iconButton [P.style expandButtonStyle, ExpandClick <$ P.onClick, "aria-expanded" := expanded, "aria-label" := "show more" ]
              [ MD.icon [] [D.text "arrow_drop_down_circle"]
              ]
          ]
      , MD.collapse [ "in" := expanded, "timeout" := "auto", "unmountOnExit" := true ]
          [ MD.cardContent [] c.details
          ]
      ]
    case axn of
      ExpandClick -> go (not expanded)
