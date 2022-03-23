module Component.TaskComponent exposing (taskComponent, Task)

import Html exposing (Html, text, div, h1, li, p)
import Message exposing (Msg)

type alias Task =
    { title : String
    , completed : Bool
    }

taskComponent : Task -> Html Msg
taskComponent task = 
    li [] [ 
        div [] [
            h1 [] [ text task.title ]
            , p [] [ text (if task.completed then "Completed" else "To Do") ]
        ]
    ]