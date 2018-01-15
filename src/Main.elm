port module Main exposing (..)
import Html exposing (..)

(>>) a b = b

port toElm : (String -> msg) -> Sub msg

-- MAIN

main : Program Never Model Msg
main =
    Html.program
        {
          init          = init,
          update        = update,
          view          = view,
          subscriptions = subscriptions
        }

-- MODEL

type alias Model =
  {
    login : String,
    password : String
  }

init : ( Model, Cmd Msg )
init = ( {login = "Hello", password = "World"}, Cmd.none )

-- UPDATE

type Msg
  = BulletIn String

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    BulletIn _ ->
      ( model, Cmd.none )
-- VIEW

view : Model -> Html Msg
view {login, password} =
  div [] [text (login ++ " " ++ password)]

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
  toElm bulletIn

bulletIn : String -> Msg
bulletIn text =
  text
  |> Debug.log "bulletIn"
  |> BulletIn
