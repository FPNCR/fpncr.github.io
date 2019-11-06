module Concur.React.MUI.Styles where

import Concur.React.MUI.Theme (Theme)
import Data.Unit (Unit)
import Effect (Effect)
import React (ReactClass)

-- TODO: Type safety
foreign import withStyles :: forall styles props. (Theme -> Record styles) ->
  ReactClass props -> ReactClass props

-- TODO: Type safety
foreign import makeStyles :: forall styles classes. (Theme -> Record styles) -> Unit -> Record classes
