module Components.AppBar where

import Concur.Core.Types (Widget)
import Concur.React (HTML)
import Concur.React.MUI.DOM (appBarStyled)
import Concur.React.Props as P
import Data.Semigroup ((<>))

styles theme =
  { root:
      { color: theme.palette.common.white
      }
  }

appBar :: forall a. Array (P.ReactProps a) -> Array (Widget HTML a) -> Widget HTML a
appBar props = appBarStyled styles ([P.unsafeMkProp "elevation" 0, P.unsafeMkProp "position" "static"] <> props)
