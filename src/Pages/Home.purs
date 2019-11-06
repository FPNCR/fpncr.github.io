module Pages.Home where

import Components.AppBar (appBar)
import Components.Card (Card, card)
import Components.HaskellLogo (haskellLogo)
import Concur.Core (Widget)
import Concur.React (HTML)
import Concur.React.DOM (el)
import Concur.React.DOM as D
import Concur.React.MUI.DOM as MD
import Concur.React.MUI.Styles (makeStyles)
import Concur.React.Props as P
import Control.Bind (bind)
import Control.MultiAlternative (orr)
import Data.Function (($))
import Data.Functor (map)
import Data.Semigroup ((<>))
import Data.Semiring ((*))
import Data.Show (show)
import Data.String (joinWith)
import Data.Unit (unit)
import Effect.Class (liftEffect)
import React.DOM as RD
import React.DOM.Props as RP
import Static (fpncrLogoPath, genericEvent, techTriveni1, techTriveni2)

cards =
  [ { title: "Online Meetup"
    , date: "19 Nov 2019 (tentative)"
    , avatar: MD.avatarRaw [RP.style {backgroundColor: "purple"} ] [RD.text "FP"]
    , media: genericEvent
    , blurb: "We'll hold a special online meetup with an invited guest speaker who will talk about the Tech Triveni Conference and how it promotes the Functional Programming Community in India"
    , details:
        [ MD.typography [ "paragraph" := true ]
            [ D.text "DETAILS UPCOMING"
            ]
        ]
        {-
        , MD.typography [ "paragraph" := true ] []
        , MD.typography [ "paragraph" := true ] []
        , MD.typography [ "paragraph" := true ] []
        , MD.typography [] [ D.text "" ]
        ]
        -}
    }
  , { title: "TechTriveni Workshop"
    , date: "23 Nov 2019"
    , avatar: MD.avatarRaw [RP.style {backgroundColor: "gray"} ] [RD.text "TW"]
    , media: techTriveni1
    , blurb: "FPNCR is partnering with Tech Triveni this year. Tech Triveni 2019 will hold a one-day Functional Programming workshop. Bring your laptop and learn how to put Scala programming language, Akka language, and Functional/Reactive Java into work on real-life situations. After completing your workshop successfully, you will also get a participation certificate."
    , details:
        [ MD.typography [ "paragraph" := true ]
          [ D.text "DETAILS UPCOMING"
          ]
        ]
    }
  , { title: "TechTriveni Conference"
    , date: "24 Nov 2019"
    , avatar: MD.avatarRaw [RP.style {backgroundColor: "gray"} ] [RD.text "TC"]
    , media: techTriveni2
    , blurb: "FPNCR is partnering with Tech Triveni this year. Tech Triveni is Asia’s first Functional & Reactive programming and big data conference. It's a unique experience for developers, data scientists, decision-makers and enthusiasts & experts from IT to collaborate on the latest architectures for building and running reactive, big data and functional systems that are scalable, high on performance using the reactive stack. Attendees will learn about the latest advances in reactive and functional programming, microservices, streaming data, big data as well as real-world enterprise best practices."
    , details:
        [ MD.typography [ "paragraph" := true ]
          [ D.text "DETAILS UPCOMING"
          ]
        ]
    }
  ]

homePage :: forall a. Widget HTML a
homePage = MD.box []
  [ MD.cssBaseline [] []
  {-
  , MD.appBar ["position" := "relative"]
    [ MD.toolbar []
      [ haskellLogo
      , MD.typography ["variant" := "h6", P.color "inherit", "noWrap" := true]
        [ D.text "FPNCR Group"
        ]
      ]
    ]
  -}
  , D.p ["align" := "center"] [D.img [P.height "400px", P.src fpncrLogoPath, P.alt "Functional Programming NCR"]]
  , MD.typography [ "variant" := "h4", "component" := "h1"] [D.text "About Us"]
  , D.p []
      [MD.typography []
        [D.text "We are a community and a meetup group for all Haskellers / other Functional Programming language enthusiasts in and around the Delhi NCR area. You can join and participate in the online events even if you are somewhere else. All skill levels from novices to gods of category theory are welcome."]
      ]
  , MD.typography [ "variant" := "h4", "component" := "h1"] [D.text "How To Connect"]
  , D.p []
      [ MD.typography []
        [ D.text "The "
        , D.a [P.href "https://gettogether.community/fpncr/"] [D.text "GetTogether community page"]
        , D.text " is the primary place for attending meetups. Please note that signups on that page do not require any personally identifying information."
        ]
      ]
  , D.p []
      [ MD.typography []
        [ D.text "We also have a "
        , D.a [P.href ""] [D.text "Meetup Page"]
        , D.text " , however we are in a process of moving away from Meetup, and the GetTogether page is preferred."
        ]
      ]
  , D.p []
    [ MD.typography []
      [ D.text "We are active on our "
      , D.a [P.href "https://t.me/fpncr"] [D.text "Telegram Group"]
      , D.text ". Please join that group for informal discussions. It's a welcoming space for folks new to Functional Programming."
      ]
    ]
    , MD.typography [ "variant" := "h4", "component" := "h1"] [D.text "Upcoming Events"]
    , MD.box [ P.style myStyles.cardGrid, "maxWidth" := "md" ]
      [ MD.grid [ "container" := true, "spacing" := "4" ]
        (map renderCard cards)
      ]
    , D.footer [ "className" := "{classes.footer}" ]
        [D.p []
          [ MD.typography [ "variant" := "h6", P.color "textSecondary", "align" := "center", "gutterBottom" := true ]
            [ D.text "Page built by the Functional Programming NCR Community" ]
          , MD.typography [ "variant" := "subtitle1", "align" := "center", P.color "textSecondary", "component" := "p" ]
            [ D.text "Source available on "
            , D.a [P.href "https://github.com/FPNCR/fpncr.github.io"] [D.text "Github"]
            ]
          , copyright
          ]
        ]
  ]

renderCard :: forall a. Card -> Widget HTML a
renderCard c = MD.grid [P.key c.title, "item" := true] [card c]

-- Put everything together
page :: forall a. Widget HTML a
-- page = MD.container [] [app ["HELLO", "GOODBYE"]]
page = MD.container [] [homePage]

-- Alias P.unsafeMkProp for convenience
infixr 9 P.unsafeMkProp as :=

-- Workaround until I get the style hooks working
myTheme = {spacing: {unit: 1}, palette: {background: {paper: "white"}}}
myStyles = appStyles myTheme
appStyles theme =
  { icon: {
       marginRight: theme.spacing.unit * 2
       },
    heroContent: {
      backgroundColor: theme.palette.background.paper,
      padding: joinWith " " $ map (\x -> (show (x * theme.spacing.unit)) <> "em") [4, 0, 6]
      },
    heroButtons: {
      marginTop: theme.spacing.unit * 4
      },
    cardGrid: {
      paddingTop: theme.spacing.unit * 8,
      paddingBottom: theme.spacing.unit * 8
      },
    card: {
      height: "100%",
      display: "flex",
      flexDirection: "column"
      },
    cardMedia: {
      paddingTop: "56.25%" -- 16:9
      },
    cardContent: {
      flexGrow: 1
      },
    footer: {
      backgroundColor: theme.palette.background.paper,
      padding: theme.spacing.unit * 6
      }
    }

copyright :: forall a. Widget HTML a
copyright =
  MD.typography ["variant" := "body2", P.color "textSecondary", "align" := "center"]
    [ D.text "Copyright © "
    , MD.link [P.color "inherit", P.href "https://material-ui.com/"] [D.text "Anupam Jain"]
    , D.text "  2019."
    ]

renderCard1 :: forall a. String -> Widget HTML a
renderCard1 card =
  MD.grid [ "item" := true, P.key card, "xs" := "12", "sm" := "6", "md" := "4" ]
  [ MD.card [ P.style myStyles.card ]
    [ MD.cardMedia [ P.style myStyles.cardMedia, "image" := "https://source.unsplash.com/random", P.title "Image title" ]
      []
    , MD.cardContent [ P.style myStyles.cardContent ]
      [ MD.typography [ "gutterBottom" := true, "variant" := "h5", "component" := "h2" ]
        [ D.text card]
      , MD.typography []
        [ D.text "This is a media card. You can use this section to describe the content."]
      ]
    , MD.cardActions []
      [ MD.button [ P.color "primary" ] [ D.text "View" ]
      , MD.button [ P.color "primary" ] [ D.text "Edit" ]
      ]
    ]
  ]
