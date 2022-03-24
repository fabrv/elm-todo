module Component.TaskComponent exposing (taskComponent, Task)

import Html exposing (Html, text, div, h1, li, p, button)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Message exposing (..)

type alias Task =
    { title : String
    , completed : Bool
    }

taskComponent : Task -> Html Msg
taskComponent task =
    li [ class "task" ] [
        div [] [
            h1 [] [ text task.title ]
            , if not task.completed then
                (button [ onClick (CompleteTask task.title) ] [ text "Complete" ])
              else
                (button [ class "secondary", onClick (DeleteTask task.title) ] [ text "Delete" ])
        ]
    ]
