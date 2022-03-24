module Update exposing (..)
import Message exposing (Msg)
import Message exposing (Msg(..))
import Model exposing (Model)
import List exposing (append, map, filter)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp ->
      ( model, Cmd.none )
    ToggleShowCompleted ->
      ( { model | showCompleted = not model.showCompleted }, Cmd.none )
    OnInputChange string ->
      ( { model | todoInput = string }, Cmd.none )
    OnAddTask title ->
      (
        { model | tasks = append model.tasks [{ title = title, completed = False }], todoInput = "" }
        , Cmd.none
      )
    CompleteTask title ->
      (
        { model | tasks = map (\t -> if t.title == title then { t | completed = True } else t) model.tasks }
        , Cmd.none
      )
    DeleteTask title ->
      (
        { model | tasks = filter (\t -> t.title /= title) model.tasks }
        , Cmd.none
      )
