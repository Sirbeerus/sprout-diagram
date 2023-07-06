{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE TypeFamilies              #-}

module Main where

import Data.Colour hiding (atop)
import Data.Complex
import Diagrams.TwoD
import Diagrams.Prelude hiding (magnitude, image, fill)
import Diagrams.Backend.Cairo.CmdLine
import Diagrams.TwoD.Shapes (triangle, rect)
import Diagrams.TwoD.Attributes
import Data.Colour.Names

sprout :: Diagram B
sprout = node === example === square 1 # fc saddlebrown === square 2 # fc saddlebrown # scaleX 0.5 

node    :: Diagram B
node    = circle 0.2 # fc green

example :: Diagram B
example = atPoints (trailVertices $ regPoly 6 1) (repeat node)

main = mainWith sprout 







