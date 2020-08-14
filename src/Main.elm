module Main exposing (..)

import Browser
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (src)


---- MODEL ----

type alias Story = 
    {}


type alias Player = 
    {}


type alias Room = {
    players: List Player
    , id: String
    , title: String
    , currentStory: Maybe Story
    , activeStories: List Story
    , completeStories: List Story 
    }


type alias Model = Room


init : ( Model, Cmd Msg )
init =
    ( { 
        id = "id"
        , title = "title"
        , currentStory = Nothing
        , activeStories = []
        , completeStories = []
        , players = []
    }, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ img [ src "/logo.svg" ] []
        , h1 [] [ text "Your Elm App is working!" ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
