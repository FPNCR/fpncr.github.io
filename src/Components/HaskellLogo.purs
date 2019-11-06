module Components.HaskellLogo where

import Concur.Core.Types (Widget)
import Concur.React (HTML)
import Concur.React.MUI.DOM as MD
import Concur.React.Props as P
import Concur.React.SVG as D

haskellLogo :: forall a. Widget HTML a
haskellLogo = MD.svgIcon []
  [ D.path [P.unsafeMkProp "d" "M 0 120 L 40 60 L 0 0 L 30 0 L 70 60 L 30 120"] []
  , D.path [P.unsafeMkProp "d" "M 136.666667 85 L 123.333333 65 L 170 65 L 170 85"] []
  , D.path [P.unsafeMkProp "d" "M 116.666667 55 L 103.333333 35 L 170 35 L 170 55"] []
  , D.path [P.unsafeMkProp "d" "M 40 120 L 80 60 L 40 0 L 70 0 L 150 120 L 120 120 L 95 82.5 L 70 120"] []
  ]
