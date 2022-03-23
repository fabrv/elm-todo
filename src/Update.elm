module Update exposing (..)
import Message exposing (Msg)
import Message exposing (Msg(..))
import Model exposing (Model)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp ->
      ( model, Cmd.none )
    ToggleShowCompleted ->
      ( { model | showCompleted = not model.showCompleted }, Cmd.none )