module Concur.React.MUI.DOM where

import Concur.React.DOM (El, el')
import Concur.React.MUI.FFI (classAppBar, classAvatar, classBackdrop, classBadge, classBottomNavigation, classBottomNavigationAction, classBox, classButton, classButtonBase, classCard, classCardActionArea, classCardActions, classCardContent, classCardHeader, classCardMedia, classCheckbox, classChip, classCircularProgress, classClickAwayListener, classCollapse, classContainer, classCssBaseline, classDialog, classDialogActions, classDialogContent, classDialogContentText, classDialogTitle, classDivider, classDrawer, classExpansionPanel, classExpansionPanelActions, classExpansionPanelDetails, classExpansionPanelSummary, classFab, classFade, classFilledInput, classFormControl, classFormControlLabel, classFormGroup, classFormHelperText, classFormLabel, classGrid, classGridList, classGridListTile, classGridListTileBar, classGrow, classHidden, classIcon, classIconButton, classInput, classInputAdornment, classInputBase, classInputLabel, classLinearProgress, classLink, classList, classListItem, classListItemAvatar, classListItemIcon, classListItemSecondaryAction, classListItemText, classListSubheader, classMenu, classMenuItem, classMenuList, classMobileStepper, classModal, classNativeSelect, classNoSsr, classOutlinedInput, classPaper, classPopover, classPopper, classPortal, classRadio, classRadioGroup, classRootRef, classSelect, classSlide, classSnackbar, classSnackbarContent, classStep, classStepButton, classStepConnector, classStepContent, classStepIcon, classStepLabel, classStepper, classSvgIcon, classSwipeableDrawer, classSwitch, classTab, classTable, classTableBody, classTableCell, classTableFooter, classTableHead, classTablePagination, classTableRow, classTableSortLabel, classTabs, classTextField, classTextareaAutosize, classToolbar, classTooltip, classTypography, classZoom)
import Concur.React.MUI.Styles (withStyles)
import Concur.React.MUI.Theme (Theme)
import React (Children, ReactClass, ReactElement, unsafeCreateElement)
import React.DOM.Props (unsafeFromPropsArray)
import React.DOM.Props as R

mkDom :: forall trash. ReactClass { children :: Children | trash } -> El
mkDom cls = el' (mkDomRaw cls)

-- Create a ReactElement, without wrapping it in Concur
mkDomRaw :: forall trash. ReactClass { children :: Children | trash } -> Array R.Props -> Array ReactElement -> ReactElement
mkDomRaw cls props = unsafeCreateElement cls (unsafeFromPropsArray props)

appBar :: El
appBar = mkDom classAppBar
appBarRaw :: Array R.Props -> Array ReactElement -> ReactElement
appBarRaw = mkDomRaw classAppBar
appBarStyled :: forall styles. (Theme -> Record styles) -> El
appBarStyled style = mkDom (withStyles style classAppBar)

avatar :: El
avatar = mkDom classAvatar
avatarRaw :: Array R.Props -> Array ReactElement -> ReactElement
avatarRaw = mkDomRaw classAvatar
avatarStyled :: forall styles. (Theme -> Record styles) -> El
avatarStyled style = mkDom (withStyles style classAvatar)

backdrop :: El
backdrop = mkDom classBackdrop
backdropRaw :: Array R.Props -> Array ReactElement -> ReactElement
backdropRaw = mkDomRaw classBackdrop
backdropStyled :: forall styles. (Theme -> Record styles) -> El
backdropStyled style = mkDom (withStyles style classBackdrop)

badge :: El
badge = mkDom classBadge
badgeRaw :: Array R.Props -> Array ReactElement -> ReactElement
badgeRaw = mkDomRaw classBadge
badgeStyled :: forall styles. (Theme -> Record styles) -> El
badgeStyled style = mkDom (withStyles style classBadge)

-- baseTextField :: El
-- baseTextField = mkDom classBaseTextField

bottomNavigation :: El
bottomNavigation = mkDom classBottomNavigation
bottomNavigationRaw :: Array R.Props -> Array ReactElement -> ReactElement
bottomNavigationRaw = mkDomRaw classBottomNavigation
bottomNavigationStyled :: forall styles. (Theme -> Record styles) -> El
bottomNavigationStyled style = mkDom (withStyles style classBottomNavigation)

bottomNavigationAction :: El
bottomNavigationAction = mkDom classBottomNavigationAction
bottomNavigationActionRaw :: Array R.Props -> Array ReactElement -> ReactElement
bottomNavigationActionRaw = mkDomRaw classBottomNavigationAction
bottomNavigationActionStyled :: forall styles. (Theme -> Record styles) -> El
bottomNavigationActionStyled style = mkDom (withStyles style classBottomNavigationAction)

box :: El
box = mkDom classBox
boxRaw :: Array R.Props -> Array ReactElement -> ReactElement
boxRaw = mkDomRaw classBox
boxStyled :: forall styles. (Theme -> Record styles) -> El
boxStyled style = mkDom (withStyles style classBox)

button :: El
button = mkDom classButton
buttonRaw :: Array R.Props -> Array ReactElement -> ReactElement
buttonRaw = mkDomRaw classButton
buttonStyled :: forall styles. (Theme -> Record styles) -> El
buttonStyled style = mkDom (withStyles style classButton)

buttonBase :: El
buttonBase = mkDom classButtonBase
buttonBaseRaw :: Array R.Props -> Array ReactElement -> ReactElement
buttonBaseRaw = mkDomRaw classButtonBase
buttonBaseStyled :: forall styles. (Theme -> Record styles) -> El
buttonBaseStyled style = mkDom (withStyles style classButtonBase)

card :: El
card = mkDom classCard
cardRaw :: Array R.Props -> Array ReactElement -> ReactElement
cardRaw = mkDomRaw classCard
cardStyled :: forall styles. (Theme -> Record styles) -> El
cardStyled style = mkDom (withStyles style classCard)

cardActionArea :: El
cardActionArea = mkDom classCardActionArea
cardActionAreaRaw :: Array R.Props -> Array ReactElement -> ReactElement
cardActionAreaRaw = mkDomRaw classCardActionArea
cardActionAreaStyled :: forall styles. (Theme -> Record styles) -> El
cardActionAreaStyled style = mkDom (withStyles style classCardActionArea)

cardActions :: El
cardActions = mkDom classCardActions
cardActionsRaw :: Array R.Props -> Array ReactElement -> ReactElement
cardActionsRaw = mkDomRaw classCardActions
cardActionsStyled :: forall styles. (Theme -> Record styles) -> El
cardActionsStyled style = mkDom (withStyles style classCardActions)

cardContent :: El
cardContent = mkDom classCardContent
cardContentRaw :: Array R.Props -> Array ReactElement -> ReactElement
cardContentRaw = mkDomRaw classCardContent
cardContentStyled :: forall styles. (Theme -> Record styles) -> El
cardContentStyled style = mkDom (withStyles style classCardContent)

cardHeader :: El
cardHeader = mkDom classCardHeader
cardHeaderRaw :: Array R.Props -> Array ReactElement -> ReactElement
cardHeaderRaw = mkDomRaw classCardHeader
cardHeaderStyled :: forall styles. (Theme -> Record styles) -> El
cardHeaderStyled style = mkDom (withStyles style classCardHeader)

cardMedia :: El
cardMedia = mkDom classCardMedia
cardMediaRaw :: Array R.Props -> Array ReactElement -> ReactElement
cardMediaRaw = mkDomRaw classCardMedia
cardMediaStyled :: forall styles. (Theme -> Record styles) -> El
cardMediaStyled style = mkDom (withStyles style classCardMedia)

checkbox :: El
checkbox = mkDom classCheckbox
checkboxRaw :: Array R.Props -> Array ReactElement -> ReactElement
checkboxRaw = mkDomRaw classCheckbox
checkboxStyled :: forall styles. (Theme -> Record styles) -> El
checkboxStyled style = mkDom (withStyles style classCheckbox)

chip :: El
chip = mkDom classChip
chipRaw :: Array R.Props -> Array ReactElement -> ReactElement
chipRaw = mkDomRaw classChip
chipStyled :: forall styles. (Theme -> Record styles) -> El
chipStyled style = mkDom (withStyles style classChip)

circularProgress :: El
circularProgress = mkDom classCircularProgress
circularProgressRaw :: Array R.Props -> Array ReactElement -> ReactElement
circularProgressRaw = mkDomRaw classCircularProgress
circularProgressStyled :: forall styles. (Theme -> Record styles) -> El
circularProgressStyled style = mkDom (withStyles style classCircularProgress)

clickAwayListener :: El
clickAwayListener = mkDom classClickAwayListener
clickAwayListenerRaw :: Array R.Props -> Array ReactElement -> ReactElement
clickAwayListenerRaw = mkDomRaw classClickAwayListener
clickAwayListenerStyled :: forall styles. (Theme -> Record styles) -> El
clickAwayListenerStyled style = mkDom (withStyles style classClickAwayListener)

collapse :: El
collapse = mkDom classCollapse
collapseRaw :: Array R.Props -> Array ReactElement -> ReactElement
collapseRaw = mkDomRaw classCollapse
collapseStyled :: forall styles. (Theme -> Record styles) -> El
collapseStyled style = mkDom (withStyles style classCollapse)

container :: El
container = mkDom classContainer
containerRaw :: Array R.Props -> Array ReactElement -> ReactElement
containerRaw = mkDomRaw classContainer
containerStyled :: forall styles. (Theme -> Record styles) -> El
containerStyled style = mkDom (withStyles style classContainer)

cssBaseline :: El
cssBaseline = mkDom classCssBaseline
cssBaselineRaw :: Array R.Props -> Array ReactElement -> ReactElement
cssBaselineRaw = mkDomRaw classCssBaseline
cssBaselineStyled :: forall styles. (Theme -> Record styles) -> El
cssBaselineStyled style = mkDom (withStyles style classCssBaseline)

dialog :: El
dialog = mkDom classDialog
dialogRaw :: Array R.Props -> Array ReactElement -> ReactElement
dialogRaw = mkDomRaw classDialog
dialogStyled :: forall styles. (Theme -> Record styles) -> El
dialogStyled style = mkDom (withStyles style classDialog)

dialogActions :: El
dialogActions = mkDom classDialogActions
dialogActionsRaw :: Array R.Props -> Array ReactElement -> ReactElement
dialogActionsRaw = mkDomRaw classDialogActions
dialogActionsStyled :: forall styles. (Theme -> Record styles) -> El
dialogActionsStyled style = mkDom (withStyles style classDialogActions)

dialogContent :: El
dialogContent = mkDom classDialogContent
dialogContentRaw :: Array R.Props -> Array ReactElement -> ReactElement
dialogContentRaw = mkDomRaw classDialogContent
dialogContentStyled :: forall styles. (Theme -> Record styles) -> El
dialogContentStyled style = mkDom (withStyles style classDialogContent)

dialogContentText :: El
dialogContentText = mkDom classDialogContentText
dialogContentTextRaw :: Array R.Props -> Array ReactElement -> ReactElement
dialogContentTextRaw = mkDomRaw classDialogContentText
dialogContentTextStyled :: forall styles. (Theme -> Record styles) -> El
dialogContentTextStyled style = mkDom (withStyles style classDialogContentText)

dialogTitle :: El
dialogTitle = mkDom classDialogTitle
dialogTitleRaw :: Array R.Props -> Array ReactElement -> ReactElement
dialogTitleRaw = mkDomRaw classDialogTitle
dialogTitleStyled :: forall styles. (Theme -> Record styles) -> El
dialogTitleStyled style = mkDom (withStyles style classDialogTitle)

divider :: El
divider = mkDom classDivider
dividerRaw :: Array R.Props -> Array ReactElement -> ReactElement
dividerRaw = mkDomRaw classDivider
dividerStyled :: forall styles. (Theme -> Record styles) -> El
dividerStyled style = mkDom (withStyles style classDivider)

drawer :: El
drawer = mkDom classDrawer
drawerRaw :: Array R.Props -> Array ReactElement -> ReactElement
drawerRaw = mkDomRaw classDrawer
drawerStyled :: forall styles. (Theme -> Record styles) -> El
drawerStyled style = mkDom (withStyles style classDrawer)

expansionPanel :: El
expansionPanel = mkDom classExpansionPanel
expansionPanelRaw :: Array R.Props -> Array ReactElement -> ReactElement
expansionPanelRaw = mkDomRaw classExpansionPanel
expansionPanelStyled :: forall styles. (Theme -> Record styles) -> El
expansionPanelStyled style = mkDom (withStyles style classExpansionPanel)

expansionPanelActions :: El
expansionPanelActions = mkDom classExpansionPanelActions
expansionPanelActionsRaw :: Array R.Props -> Array ReactElement -> ReactElement
expansionPanelActionsRaw = mkDomRaw classExpansionPanelActions
expansionPanelActionsStyled :: forall styles. (Theme -> Record styles) -> El
expansionPanelActionsStyled style = mkDom (withStyles style classExpansionPanelActions)

expansionPanelDetails :: El
expansionPanelDetails = mkDom classExpansionPanelDetails
expansionPanelDetailsRaw :: Array R.Props -> Array ReactElement -> ReactElement
expansionPanelDetailsRaw = mkDomRaw classExpansionPanelDetails
expansionPanelDetailsStyled :: forall styles. (Theme -> Record styles) -> El
expansionPanelDetailsStyled style = mkDom (withStyles style classExpansionPanelDetails)

expansionPanelSummary :: El
expansionPanelSummary = mkDom classExpansionPanelSummary
expansionPanelSummaryRaw :: Array R.Props -> Array ReactElement -> ReactElement
expansionPanelSummaryRaw = mkDomRaw classExpansionPanelSummary
expansionPanelSummaryStyled :: forall styles. (Theme -> Record styles) -> El
expansionPanelSummaryStyled style = mkDom (withStyles style classExpansionPanelSummary)

fab :: El
fab = mkDom classFab
fabRaw :: Array R.Props -> Array ReactElement -> ReactElement
fabRaw = mkDomRaw classFab
fabStyled :: forall styles. (Theme -> Record styles) -> El
fabStyled style = mkDom (withStyles style classFab)

fade :: El
fade = mkDom classFade
fadeRaw :: Array R.Props -> Array ReactElement -> ReactElement
fadeRaw = mkDomRaw classFade
fadeStyled :: forall styles. (Theme -> Record styles) -> El
fadeStyled style = mkDom (withStyles style classFade)

filledInput :: El
filledInput = mkDom classFilledInput
filledInputRaw :: Array R.Props -> Array ReactElement -> ReactElement
filledInputRaw = mkDomRaw classFilledInput
filledInputStyled :: forall styles. (Theme -> Record styles) -> El
filledInputStyled style = mkDom (withStyles style classFilledInput)

formControl :: El
formControl = mkDom classFormControl
formControlRaw :: Array R.Props -> Array ReactElement -> ReactElement
formControlRaw = mkDomRaw classFormControl
formControlStyled :: forall styles. (Theme -> Record styles) -> El
formControlStyled style = mkDom (withStyles style classFormControl)

-- formControlContext :: El
-- formControlContext = mkDom classFormControlContext

formControlLabel :: El
formControlLabel = mkDom classFormControlLabel
formControlLabelRaw :: Array R.Props -> Array ReactElement -> ReactElement
formControlLabelRaw = mkDomRaw classFormControlLabel
formControlLabelStyled :: forall styles. (Theme -> Record styles) -> El
formControlLabelStyled style = mkDom (withStyles style classFormControlLabel)

formGroup :: El
formGroup = mkDom classFormGroup
formGroupRaw :: Array R.Props -> Array ReactElement -> ReactElement
formGroupRaw = mkDomRaw classFormGroup
formGroupStyled :: forall styles. (Theme -> Record styles) -> El
formGroupStyled style = mkDom (withStyles style classFormGroup)

formHelperText :: El
formHelperText = mkDom classFormHelperText
formHelperTextRaw :: Array R.Props -> Array ReactElement -> ReactElement
formHelperTextRaw = mkDomRaw classFormHelperText
formHelperTextStyled :: forall styles. (Theme -> Record styles) -> El
formHelperTextStyled style = mkDom (withStyles style classFormHelperText)

formLabel :: El
formLabel = mkDom classFormLabel
formLabelRaw :: Array R.Props -> Array ReactElement -> ReactElement
formLabelRaw = mkDomRaw classFormLabel
formLabelStyled :: forall styles. (Theme -> Record styles) -> El
formLabelStyled style = mkDom (withStyles style classFormLabel)

grid :: El
grid = mkDom classGrid
gridRaw :: Array R.Props -> Array ReactElement -> ReactElement
gridRaw = mkDomRaw classGrid
gridStyled :: forall styles. (Theme -> Record styles) -> El
gridStyled style = mkDom (withStyles style classGrid)

gridList :: El
gridList = mkDom classGridList
gridListRaw :: Array R.Props -> Array ReactElement -> ReactElement
gridListRaw = mkDomRaw classGridList
gridListStyled :: forall styles. (Theme -> Record styles) -> El
gridListStyled style = mkDom (withStyles style classGridList)

gridListTile :: El
gridListTile = mkDom classGridListTile
gridListTileRaw :: Array R.Props -> Array ReactElement -> ReactElement
gridListTileRaw = mkDomRaw classGridListTile
gridListTileStyled :: forall styles. (Theme -> Record styles) -> El
gridListTileStyled style = mkDom (withStyles style classGridListTile)

gridListTileBar :: El
gridListTileBar = mkDom classGridListTileBar
gridListTileBarRaw :: Array R.Props -> Array ReactElement -> ReactElement
gridListTileBarRaw = mkDomRaw classGridListTileBar
gridListTileBarStyled :: forall styles. (Theme -> Record styles) -> El
gridListTileBarStyled style = mkDom (withStyles style classGridListTileBar)

grow :: El
grow = mkDom classGrow
growRaw :: Array R.Props -> Array ReactElement -> ReactElement
growRaw = mkDomRaw classGrow
growStyled :: forall styles. (Theme -> Record styles) -> El
growStyled style = mkDom (withStyles style classGrow)

hidden :: El
hidden = mkDom classHidden
hiddenRaw :: Array R.Props -> Array ReactElement -> ReactElement
hiddenRaw = mkDomRaw classHidden
hiddenStyled :: forall styles. (Theme -> Record styles) -> El
hiddenStyled style = mkDom (withStyles style classHidden)

-- hiddenCss :: El
-- hiddenCss = mkDom classHiddenCss

-- hiddenJs :: El
-- hiddenJs = mkDom classHiddenJs

icon :: El
icon = mkDom classIcon
iconRaw :: Array R.Props -> Array ReactElement -> ReactElement
iconRaw = mkDomRaw classIcon
iconStyled :: forall styles. (Theme -> Record styles) -> El
iconStyled style = mkDom (withStyles style classIcon)

iconButton :: El
iconButton = mkDom classIconButton
iconButtonRaw :: Array R.Props -> Array ReactElement -> ReactElement
iconButtonRaw = mkDomRaw classIconButton
iconButtonStyled :: forall styles. (Theme -> Record styles) -> El
iconButtonStyled style = mkDom (withStyles style classIconButton)

-- injected :: El
-- injected = mkDom classInjected

input :: El
input = mkDom classInput
inputRaw :: Array R.Props -> Array ReactElement -> ReactElement
inputRaw = mkDomRaw classInput
inputStyled :: forall styles. (Theme -> Record styles) -> El
inputStyled style = mkDom (withStyles style classInput)

inputAdornment :: El
inputAdornment = mkDom classInputAdornment
inputAdornmentRaw :: Array R.Props -> Array ReactElement -> ReactElement
inputAdornmentRaw = mkDomRaw classInputAdornment
inputAdornmentStyled :: forall styles. (Theme -> Record styles) -> El
inputAdornmentStyled style = mkDom (withStyles style classInputAdornment)

inputBase :: El
inputBase = mkDom classInputBase
inputBaseRaw :: Array R.Props -> Array ReactElement -> ReactElement
inputBaseRaw = mkDomRaw classInputBase
inputBaseStyled :: forall styles. (Theme -> Record styles) -> El
inputBaseStyled style = mkDom (withStyles style classInputBase)

-- inputBaseComponent :: El
-- inputBaseComponent = mkDom classInputBaseComponent

inputLabel :: El
inputLabel = mkDom classInputLabel
inputLabelRaw :: Array R.Props -> Array ReactElement -> ReactElement
inputLabelRaw = mkDomRaw classInputLabel
inputLabelStyled :: forall styles. (Theme -> Record styles) -> El
inputLabelStyled style = mkDom (withStyles style classInputLabel)

-- jss :: El
-- jss = mkDom classJss

linearProgress :: El
linearProgress = mkDom classLinearProgress
linearProgressRaw :: Array R.Props -> Array ReactElement -> ReactElement
linearProgressRaw = mkDomRaw classLinearProgress
linearProgressStyled :: forall styles. (Theme -> Record styles) -> El
linearProgressStyled style = mkDom (withStyles style classLinearProgress)

link :: El
link = mkDom classLink
linkRaw :: Array R.Props -> Array ReactElement -> ReactElement
linkRaw = mkDomRaw classLink
linkStyled :: forall styles. (Theme -> Record styles) -> El
linkStyled style = mkDom (withStyles style classLink)

list :: El
list = mkDom classList
listRaw :: Array R.Props -> Array ReactElement -> ReactElement
listRaw = mkDomRaw classList
listStyled :: forall styles. (Theme -> Record styles) -> El
listStyled style = mkDom (withStyles style classList)

listItem :: El
listItem = mkDom classListItem
listItemRaw :: Array R.Props -> Array ReactElement -> ReactElement
listItemRaw = mkDomRaw classListItem
listItemStyled :: forall styles. (Theme -> Record styles) -> El
listItemStyled style = mkDom (withStyles style classListItem)

listItemAvatar :: El
listItemAvatar = mkDom classListItemAvatar
listItemAvatarRaw :: Array R.Props -> Array ReactElement -> ReactElement
listItemAvatarRaw = mkDomRaw classListItemAvatar
listItemAvatarStyled :: forall styles. (Theme -> Record styles) -> El
listItemAvatarStyled style = mkDom (withStyles style classListItemAvatar)

listItemIcon :: El
listItemIcon = mkDom classListItemIcon
listItemIconRaw :: Array R.Props -> Array ReactElement -> ReactElement
listItemIconRaw = mkDomRaw classListItemIcon
listItemIconStyled :: forall styles. (Theme -> Record styles) -> El
listItemIconStyled style = mkDom (withStyles style classListItemIcon)

listItemSecondaryAction :: El
listItemSecondaryAction = mkDom classListItemSecondaryAction
listItemSecondaryActionRaw :: Array R.Props -> Array ReactElement -> ReactElement
listItemSecondaryActionRaw = mkDomRaw classListItemSecondaryAction
listItemSecondaryActionStyled :: forall styles. (Theme -> Record styles) -> El
listItemSecondaryActionStyled style = mkDom (withStyles style classListItemSecondaryAction)

listItemText :: El
listItemText = mkDom classListItemText
listItemTextRaw :: Array R.Props -> Array ReactElement -> ReactElement
listItemTextRaw = mkDomRaw classListItemText
listItemTextStyled :: forall styles. (Theme -> Record styles) -> El
listItemTextStyled style = mkDom (withStyles style classListItemText)

listSubheader :: El
listSubheader = mkDom classListSubheader
listSubheaderRaw :: Array R.Props -> Array ReactElement -> ReactElement
listSubheaderRaw = mkDomRaw classListSubheader
listSubheaderStyled :: forall styles. (Theme -> Record styles) -> El
listSubheaderStyled style = mkDom (withStyles style classListSubheader)

menu :: El
menu = mkDom classMenu
menuRaw :: Array R.Props -> Array ReactElement -> ReactElement
menuRaw = mkDomRaw classMenu
menuStyled :: forall styles. (Theme -> Record styles) -> El
menuStyled style = mkDom (withStyles style classMenu)

menuItem :: El
menuItem = mkDom classMenuItem
menuItemRaw :: Array R.Props -> Array ReactElement -> ReactElement
menuItemRaw = mkDomRaw classMenuItem
menuItemStyled :: forall styles. (Theme -> Record styles) -> El
menuItemStyled style = mkDom (withStyles style classMenuItem)

menuList :: El
menuList = mkDom classMenuList
menuListRaw :: Array R.Props -> Array ReactElement -> ReactElement
menuListRaw = mkDomRaw classMenuList
menuListStyled :: forall styles. (Theme -> Record styles) -> El
menuListStyled style = mkDom (withStyles style classMenuList)

-- mergeWithListContext :: El
-- mergeWithListContext = mkDom classMergeWithListContext

mobileStepper :: El
mobileStepper = mkDom classMobileStepper
mobileStepperRaw :: Array R.Props -> Array ReactElement -> ReactElement
mobileStepperRaw = mkDomRaw classMobileStepper
mobileStepperStyled :: forall styles. (Theme -> Record styles) -> El
mobileStepperStyled style = mkDom (withStyles style classMobileStepper)

modal :: El
modal = mkDom classModal
modalRaw :: Array R.Props -> Array ReactElement -> ReactElement
modalRaw = mkDomRaw classModal
modalStyled :: forall styles. (Theme -> Record styles) -> El
modalStyled style = mkDom (withStyles style classModal)

-- muiThemeProvider :: El
-- muiThemeProvider = mkDom classMuiThemeProvider

nativeSelect :: El
nativeSelect = mkDom classNativeSelect
nativeSelectRaw :: Array R.Props -> Array ReactElement -> ReactElement
nativeSelectRaw = mkDomRaw classNativeSelect
nativeSelectStyled :: forall styles. (Theme -> Record styles) -> El
nativeSelectStyled style = mkDom (withStyles style classNativeSelect)

-- nativeSelectInput :: El
-- nativeSelectInput = mkDom classNativeSelectInput

noSsr :: El
noSsr = mkDom classNoSsr
noSsrRaw :: Array R.Props -> Array ReactElement -> ReactElement
noSsrRaw = mkDomRaw classNoSsr
noSsrStyled :: forall styles. (Theme -> Record styles) -> El
noSsrStyled style = mkDom (withStyles style classNoSsr)

-- notchedOutline :: El
-- notchedOutline = mkDom classNotchedOutline

outlinedInput :: El
outlinedInput = mkDom classOutlinedInput
outlinedInputRaw :: Array R.Props -> Array ReactElement -> ReactElement
outlinedInputRaw = mkDomRaw classOutlinedInput
outlinedInputStyled :: forall styles. (Theme -> Record styles) -> El
outlinedInputStyled style = mkDom (withStyles style classOutlinedInput)

paper :: El
paper = mkDom classPaper
paperRaw :: Array R.Props -> Array ReactElement -> ReactElement
paperRaw = mkDomRaw classPaper
paperStyled :: forall styles. (Theme -> Record styles) -> El
paperStyled style = mkDom (withStyles style classPaper)

popover :: El
popover = mkDom classPopover
popoverRaw :: Array R.Props -> Array ReactElement -> ReactElement
popoverRaw = mkDomRaw classPopover
popoverStyled :: forall styles. (Theme -> Record styles) -> El
popoverStyled style = mkDom (withStyles style classPopover)

popper :: El
popper = mkDom classPopper
popperRaw :: Array R.Props -> Array ReactElement -> ReactElement
popperRaw = mkDomRaw classPopper
popperStyled :: forall styles. (Theme -> Record styles) -> El
popperStyled style = mkDom (withStyles style classPopper)

portal :: El
portal = mkDom classPortal
portalRaw :: Array R.Props -> Array ReactElement -> ReactElement
portalRaw = mkDomRaw classPortal
portalStyled :: forall styles. (Theme -> Record styles) -> El
portalStyled style = mkDom (withStyles style classPortal)

radio :: El
radio = mkDom classRadio
radioRaw :: Array R.Props -> Array ReactElement -> ReactElement
radioRaw = mkDomRaw classRadio
radioStyled :: forall styles. (Theme -> Record styles) -> El
radioStyled style = mkDom (withStyles style classRadio)

radioGroup :: El
radioGroup = mkDom classRadioGroup
radioGroupRaw :: Array R.Props -> Array ReactElement -> ReactElement
radioGroupRaw = mkDomRaw classRadioGroup
radioGroupStyled :: forall styles. (Theme -> Record styles) -> El
radioGroupStyled style = mkDom (withStyles style classRadioGroup)

rootRef :: El
rootRef = mkDom classRootRef
rootRefRaw :: Array R.Props -> Array ReactElement -> ReactElement
rootRefRaw = mkDomRaw classRootRef
rootRefStyled :: forall styles. (Theme -> Record styles) -> El
rootRefStyled style = mkDom (withStyles style classRootRef)

select :: El
select = mkDom classSelect
selectRaw :: Array R.Props -> Array ReactElement -> ReactElement
selectRaw = mkDomRaw classSelect
selectStyled :: forall styles. (Theme -> Record styles) -> El
selectStyled style = mkDom (withStyles style classSelect)

-- selectInput :: El
-- selectInput = mkDom classSelectInput

slide :: El
slide = mkDom classSlide
slideRaw :: Array R.Props -> Array ReactElement -> ReactElement
slideRaw = mkDomRaw classSlide
slideStyled :: forall styles. (Theme -> Record styles) -> El
slideStyled style = mkDom (withStyles style classSlide)

snackbar :: El
snackbar = mkDom classSnackbar
snackbarRaw :: Array R.Props -> Array ReactElement -> ReactElement
snackbarRaw = mkDomRaw classSnackbar
snackbarStyled :: forall styles. (Theme -> Record styles) -> El
snackbarStyled style = mkDom (withStyles style classSnackbar)

snackbarContent :: El
snackbarContent = mkDom classSnackbarContent
snackbarContentRaw :: Array R.Props -> Array ReactElement -> ReactElement
snackbarContentRaw = mkDomRaw classSnackbarContent
snackbarContentStyled :: forall styles. (Theme -> Record styles) -> El
snackbarContentStyled style = mkDom (withStyles style classSnackbarContent)

step :: El
step = mkDom classStep
stepRaw :: Array R.Props -> Array ReactElement -> ReactElement
stepRaw = mkDomRaw classStep
stepStyled :: forall styles. (Theme -> Record styles) -> El
stepStyled style = mkDom (withStyles style classStep)

stepButton :: El
stepButton = mkDom classStepButton
stepButtonRaw :: Array R.Props -> Array ReactElement -> ReactElement
stepButtonRaw = mkDomRaw classStepButton
stepButtonStyled :: forall styles. (Theme -> Record styles) -> El
stepButtonStyled style = mkDom (withStyles style classStepButton)

stepConnector :: El
stepConnector = mkDom classStepConnector
stepConnectorRaw :: Array R.Props -> Array ReactElement -> ReactElement
stepConnectorRaw = mkDomRaw classStepConnector
stepConnectorStyled :: forall styles. (Theme -> Record styles) -> El
stepConnectorStyled style = mkDom (withStyles style classStepConnector)

stepContent :: El
stepContent = mkDom classStepContent
stepContentRaw :: Array R.Props -> Array ReactElement -> ReactElement
stepContentRaw = mkDomRaw classStepContent
stepContentStyled :: forall styles. (Theme -> Record styles) -> El
stepContentStyled style = mkDom (withStyles style classStepContent)

stepIcon :: El
stepIcon = mkDom classStepIcon
stepIconRaw :: Array R.Props -> Array ReactElement -> ReactElement
stepIconRaw = mkDomRaw classStepIcon
stepIconStyled :: forall styles. (Theme -> Record styles) -> El
stepIconStyled style = mkDom (withStyles style classStepIcon)

stepLabel :: El
stepLabel = mkDom classStepLabel
stepLabelRaw :: Array R.Props -> Array ReactElement -> ReactElement
stepLabelRaw = mkDomRaw classStepLabel
stepLabelStyled :: forall styles. (Theme -> Record styles) -> El
stepLabelStyled style = mkDom (withStyles style classStepLabel)

stepper :: El
stepper = mkDom classStepper
stepperRaw :: Array R.Props -> Array ReactElement -> ReactElement
stepperRaw = mkDomRaw classStepper
stepperStyled :: forall styles. (Theme -> Record styles) -> El
stepperStyled style = mkDom (withStyles style classStepper)

svgIcon :: El
svgIcon = mkDom classSvgIcon
svgIconRaw :: Array R.Props -> Array ReactElement -> ReactElement
svgIconRaw = mkDomRaw classSvgIcon
svgIconStyled :: forall styles. (Theme -> Record styles) -> El
svgIconStyled style = mkDom (withStyles style classSvgIcon)

swipeableDrawer :: El
swipeableDrawer = mkDom classSwipeableDrawer
swipeableDrawerRaw :: Array R.Props -> Array ReactElement -> ReactElement
swipeableDrawerRaw = mkDomRaw classSwipeableDrawer
swipeableDrawerStyled :: forall styles. (Theme -> Record styles) -> El
swipeableDrawerStyled style = mkDom (withStyles style classSwipeableDrawer)

switch :: El
switch = mkDom classSwitch
switchRaw :: Array R.Props -> Array ReactElement -> ReactElement
switchRaw = mkDomRaw classSwitch
switchStyled :: forall styles. (Theme -> Record styles) -> El
switchStyled style = mkDom (withStyles style classSwitch)

tab :: El
tab = mkDom classTab
tabRaw :: Array R.Props -> Array ReactElement -> ReactElement
tabRaw = mkDomRaw classTab
tabStyled :: forall styles. (Theme -> Record styles) -> El
tabStyled style = mkDom (withStyles style classTab)

-- tabIndicator :: El
-- tabIndicator = mkDom classTabIndicator

-- tabScrollButton :: El
-- tabScrollButton = mkDom classTabScrollButton

table :: El
table = mkDom classTable
tableRaw :: Array R.Props -> Array ReactElement -> ReactElement
tableRaw = mkDomRaw classTable
tableStyled :: forall styles. (Theme -> Record styles) -> El
tableStyled style = mkDom (withStyles style classTable)

tableBody :: El
tableBody = mkDom classTableBody
tableBodyRaw :: Array R.Props -> Array ReactElement -> ReactElement
tableBodyRaw = mkDomRaw classTableBody
tableBodyStyled :: forall styles. (Theme -> Record styles) -> El
tableBodyStyled style = mkDom (withStyles style classTableBody)

tableCell :: El
tableCell = mkDom classTableCell
tableCellRaw :: Array R.Props -> Array ReactElement -> ReactElement
tableCellRaw = mkDomRaw classTableCell
tableCellStyled :: forall styles. (Theme -> Record styles) -> El
tableCellStyled style = mkDom (withStyles style classTableCell)

-- tableContext :: El
-- tableContext = mkDom classTableContext

tableFooter :: El
tableFooter = mkDom classTableFooter
tableFooterRaw :: Array R.Props -> Array ReactElement -> ReactElement
tableFooterRaw = mkDomRaw classTableFooter
tableFooterStyled :: forall styles. (Theme -> Record styles) -> El
tableFooterStyled style = mkDom (withStyles style classTableFooter)

tableHead :: El
tableHead = mkDom classTableHead
tableHeadRaw :: Array R.Props -> Array ReactElement -> ReactElement
tableHeadRaw = mkDomRaw classTableHead
tableHeadStyled :: forall styles. (Theme -> Record styles) -> El
tableHeadStyled style = mkDom (withStyles style classTableHead)

tablePagination :: El
tablePagination = mkDom classTablePagination
tablePaginationRaw :: Array R.Props -> Array ReactElement -> ReactElement
tablePaginationRaw = mkDomRaw classTablePagination
tablePaginationStyled :: forall styles. (Theme -> Record styles) -> El
tablePaginationStyled style = mkDom (withStyles style classTablePagination)

-- tablePaginationActions :: El
-- tablePaginationActions = mkDom classTablePaginationActions

tableRow :: El
tableRow = mkDom classTableRow
tableRowRaw :: Array R.Props -> Array ReactElement -> ReactElement
tableRowRaw = mkDomRaw classTableRow
tableRowStyled :: forall styles. (Theme -> Record styles) -> El
tableRowStyled style = mkDom (withStyles style classTableRow)

tableSortLabel :: El
tableSortLabel = mkDom classTableSortLabel
tableSortLabelRaw :: Array R.Props -> Array ReactElement -> ReactElement
tableSortLabelRaw = mkDomRaw classTableSortLabel
tableSortLabelStyled :: forall styles. (Theme -> Record styles) -> El
tableSortLabelStyled style = mkDom (withStyles style classTableSortLabel)

-- tablelvl2Context :: El
-- tablelvl2Context = mkDom classTablelvl2Context

tabs :: El
tabs = mkDom classTabs
tabsRaw :: Array R.Props -> Array ReactElement -> ReactElement
tabsRaw = mkDomRaw classTabs
tabsStyled :: forall styles. (Theme -> Record styles) -> El
tabsStyled style = mkDom (withStyles style classTabs)

textField :: El
textField = mkDom classTextField
textFieldRaw :: Array R.Props -> Array ReactElement -> ReactElement
textFieldRaw = mkDomRaw classTextField
textFieldStyled :: forall styles. (Theme -> Record styles) -> El
textFieldStyled style = mkDom (withStyles style classTextField)

textareaAutosize :: El
textareaAutosize = mkDom classTextareaAutosize
textareaAutosizeRaw :: Array R.Props -> Array ReactElement -> ReactElement
textareaAutosizeRaw = mkDomRaw classTextareaAutosize
textareaAutosizeStyled :: forall styles. (Theme -> Record styles) -> El
textareaAutosizeStyled style = mkDom (withStyles style classTextareaAutosize)

-- themedComponent :: El
-- themedComponent = mkDom classThemedComponent

toolbar :: El
toolbar = mkDom classToolbar
toolbarRaw :: Array R.Props -> Array ReactElement -> ReactElement
toolbarRaw = mkDomRaw classToolbar
toolbarStyled :: forall styles. (Theme -> Record styles) -> El
toolbarStyled style = mkDom (withStyles style classToolbar)

tooltip :: El
tooltip = mkDom classTooltip
tooltipRaw :: Array R.Props -> Array ReactElement -> ReactElement
tooltipRaw = mkDomRaw classTooltip
tooltipStyled :: forall styles. (Theme -> Record styles) -> El
tooltipStyled style = mkDom (withStyles style classTooltip)

-- transition :: El
-- transition = mkDom classTransition

typography :: El
typography = mkDom classTypography
typographyRaw :: Array R.Props -> Array ReactElement -> ReactElement
typographyRaw = mkDomRaw classTypography
typographyStyled :: forall styles. (Theme -> Record styles) -> El
typographyStyled style = mkDom (withStyles style classTypography)

-- withWidth :: El
-- withWidth = mkDom classWithWidth

zoom :: El
zoom = mkDom classZoom
zoomRaw :: Array R.Props -> Array ReactElement -> ReactElement
zoomRaw = mkDomRaw classZoom
zoomStyled :: forall styles. (Theme -> Record styles) -> El
zoomStyled style = mkDom (withStyles style classZoom)
