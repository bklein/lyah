import qualified Shape as S
import qualified Vector as V

main :: IO()
main = do
  let my_circle = S.Circle (S.Point 0 0) 4.3
  print $ my_circle
  print $ S.surface (my_circle)

  let vec = V.Vector 1 2 3
  let other_vec = V.Vector 4 5 6
  let scale = 2.0
  putStrLn $ "vec: " ++ (show vec)
  putStrLn $ "other_vec: " ++ (show other_vec)
  putStrLn $ "scale: " ++ (show scale)
  putStrLn $ "scale" ++ show (V.scale vec scale)
  putStrLn $ "plus: " ++ show (vec `V.plus` other_vec)
  putStrLn $ "dot: " ++ show (vec `V.dot` other_vec)
