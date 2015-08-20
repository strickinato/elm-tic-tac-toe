module Box where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- MODEL

type alias Model = Cell

type Cell
  = Player1
  | Player2
  | Nobody


-- UPDATE

type Action = Flip Model

update : Action -> Model -> Model
update action model =
  case action of
    Flip player ->
      case model.player of
        Player1 -> model
        Player2 -> Player1
        Nobody  -> player


-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
  div
    [ Html.Attributes.class "cell"
    , Html.Events.onClick address Flip ]
    [ Html.text (asText model) ]

asText : Model -> String
asText model =
  case model of
    Player1 -> "X"
    Player2 -> "0"
    Nobody  -> " "
