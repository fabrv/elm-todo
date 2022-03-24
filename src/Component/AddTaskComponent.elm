module Component.AddTaskComponent exposing (..)
import Html exposing (Html, div, input, button, text)
import Html.Attributes exposing (placeholder, value, class)
import Html.Events exposing (onInput)
import Model exposing (Model)
import Message exposing (Msg, Msg(..))
import Html.Events exposing (onClick)

view : Model -> Html Msg
view model =
    div [ class "add-task" ] [
        input [ placeholder "Task title", value model.todoInput, onInput OnInputChange ] []
        , button [ onClick (OnAddTask model.todoInput) ] [text "Add Task"]
    ]
