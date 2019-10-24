module Pages.Home where

import Concur.Core (Widget)
import Concur.React (HTML)
import Concur.React.MUI.DOM as MD
import Concur.React.DOM as D
import Concur.React.Props as P

foreign import fpncrLogoPath :: String

homePage :: forall a. Widget HTML a
homePage = MD.box []
  [ D.p [P.unsafeMkProp "align" "center"] [D.img [P.height "50%", P.src fpncrLogoPath, P.alt "Functional Programming NCR's cover image"]]
  , D.h2 [] [D.text "About Us"]
  , D.p [] [D.text "We are a community and a meetup group for all Haskellers / other Functional Programming language enthusiasts in and around the Delhi NCR area. You can join and participate in the online events even if you are somewhere else. All skill levels from novices to gods of category theory are welcome."]
  , D.h2 [] [D.text "How To Connect"]
  , D.p []
      [ D.text "The "
      , D.a [P.href "https://gettogether.community/fpncr/"] [D.text "GetTogether community page"]
      , D.text " is the primary place for attending meetups. Please note that signups on that page do not require any personally identifying information."
      ]
  , D.p []
      [ D.text "We also have a "
      , D.a [P.href ""] [D.text "Meetup Page"]
      , D.text " , however we are in a process of moving away from Meetup, and the GetTogether page is preferred."
      ]
  , D.p []
    [ D.text "We are active on our "
    , D.a [P.href "https://t.me/fpncr"] [D.text "Telegram Group"]
    , D.text ". Please join that group for informal discussions. It's a welcoming space for folks new to Functional Programming."
    ]
  ]

-- Put everything together
page :: forall a. Widget HTML a
page = MD.container [] [homePage]
