import qualified Control.Lens                 as L
import           Data.Colour
import           Data.Colour.Names
import           Data.Default.Class
import           Data.IORef
import qualified Graphics.Rendering.Chart     as C
import           Graphics.Rendering.Chart.Gtk
import           Graphics.UI.Gtk
import           System.Environment           (getArgs)

main :: IO ()
main= do
    initGUI
    window <- windowNew
    set window [windowTitle          := "Simple Iteration",
                windowDefaultWidth   := 300,
                windowDefaultHeight  := 200,
                containerBorderWidth := 30 ]

    vb <- vBoxNew False 0
    containerAdd window vb

    hb <- hBoxNew False 0
    boxPackStart vb hb PackNatural 0

    rvalue <- entryNew
    boxPackStart hb rvalue PackNatural 5
    entrySetText rvalue "R value"

    x0value <- entryNew
    boxPackStart hb x0value PackNatural 5
    entrySetText x0value "x0 value"

    button <- buttonNewWithLabel "Plot"
    boxPackStart hb button PackNatural 0

    buttonPlus <- buttonNewWithLabel "+"
    boxPackStart hb buttonPlus PackNatural 0

    buttonMinus <- buttonNewWithLabel " - "
    boxPackStart hb buttonMinus PackNatural 0

    txtstack <- statusbarNew
    boxPackStart vb txtstack PackNatural 0

    id <- statusbarGetContextId txtstack "Line"

    frame <- frameNew
    boxPackStart vb frame PackGrow 0
    containerAdd window frame

    canvas <- drawingAreaNew
    containerAdd frame canvas
    widgetModifyBg canvas StateNormal (Color 65535 65535 65535)

    widgetShowAll window

    iterations <- newIORef [1..400]

    onPressed button (drawer canvas rvalue x0value iterations >> return ())
    onPressed buttonPlus (modifyIORef iterations (\ arr -> arr ++ [last arr + 1..last arr * 2]) >> drawer canvas rvalue x0value iterations >> return ())
    onPressed buttonMinus (modifyIORef iterations (\ arr -> take ((length arr) `div` 2) arr) >> drawer canvas rvalue x0value iterations >> return ())
    onDestroy window mainQuit

    mainGUI


drawer canvas rvalue x0value iterations = do
    it <- readIORef iterations
    rx <- entryGetText rvalue
    x0 <- entryGetText x0value
    updateCanvas (chart (read rx :: Double) (read x0 :: Double) it) canvas


setLinesBlue :: C.PlotLines a b -> C.PlotLines a b
setLinesBlue = C.plot_lines_style  . C.line_color L..~ opaque blue

chart :: Double -> Double -> [Double] -> C.Renderable()
chart rx x0 iterations = C.toRenderable (layout x0)
  where
    phi :: Double -> Double
    phi x = rx * x * (1 - x)

    plotFunction x0 = C.plot_lines_values L..~ ([ zip iterations (foldl (\acc _ -> acc ++ [(phi $ last acc)]) [phi x0] iterations)] :: [[(Double, Double)]])
            $ C.plot_lines_style  . C.line_color L..~ opaque blue
            $ C.plot_lines_title L..~ "phi (x)"
            $ def

    layout x0 = C.layout_title L..~ "Simple Iteration"
            $ C.layout_plots L..~ [C.toPlot $ plotFunction x0]
            $ def
