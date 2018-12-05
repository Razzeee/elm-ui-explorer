module ExplorerWithNotes exposing (main)

import Button exposing (..)
import Html
import UIExplorer
    exposing
        ( ExplorerProgram
        , app
        , createUI
        , defaultConfig
        , explore
        )
import UIExplorer.Plugins.Note as ExplorerNotesPlugin exposing (addNote)


type alias PluginOption =
    { notes : ExplorerNotesPlugin.PluginModel
    }


note =
    { notes = addNote """
# Button
The Button should be used to trigger user actions.
Some examples of interactions:
  - Submit a form
  - Cancel an order
  - Toggle a menu visibility
  - Play a media

## Usage

```elm
import Button exposing (..)
Button.view "Submit" defaultButtonConfig ()
```

### `Config`
```elm
type alias Config  =
    { appearance : Button.Appearance, size : Button.Size, kind : Button.Kind, class : String.String }
```
 Option to customize the Button


---


### `Size`
```elm
type Size
    = S
    | M
    | L
```
 Define the size of the Button


---


### `Kind`
```elm
type Kind
    = Link
    | Filled
    | Ghost
```
 Look and feel of the Button


---


### `Appearance`
```elm
type Appearance
    = Primary
    | Secondary
```
 Define the appearance of the Button


---


### `defaultButtonConfig`
```elm
defaultButtonConfig : Config
```
 Default Configurations


---


### `view`
```elm
view : String.String -> Config -> msg -> Html.Html msg
```
 Renders the button


---


> Generated with elm: 0.19.0 and elm-docs: 0.4.0

""" }


main : ExplorerProgram {} () PluginOption
main =
    app
        (explore
            [ createUI
                "Button"
                [ ( "Primary", \_ -> Button.view "Submit" defaultButtonConfig (), note )
                , ( "Secondary", \_ -> Button.view "Submit" { defaultButtonConfig | appearance = Secondary } (), note )
                , ( "Small", \_ -> Button.view "Submit" { defaultButtonConfig | size = S } (), note )
                , ( "Large", \_ -> Button.view "Submit" { defaultButtonConfig | size = L } (), note )
                , ( "Link", \_ -> Button.view "Submit" { defaultButtonConfig | kind = Link, appearance = Secondary } (), note )
                , ( "GhostPrimary", \_ -> Button.view "Submit" { defaultButtonConfig | kind = Ghost } (), note )
                , ( "GhostSecondary", \_ -> Button.view "Submit" { defaultButtonConfig | appearance = Secondary, kind = Ghost } (), note )
                ]
            ]
        )
        { defaultConfig | viewEnhancer = ExplorerNotesPlugin.viewEnhancer }