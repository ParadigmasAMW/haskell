import qualified Data.Text    as Text
import qualified Data.Text.IO as Text
import BinaryTree (history, buildTree)
import System.Process

clear = system "cls"

play = do
	clear
	schedule <- fmap Text.lines (Text.readFile "colocar a parte do rpg")    
	let rpgBinTree = buildTree schedule								
	history gameBinTree
	putStrLn "Deseja batalhar novamente? (1 SIM, 2 NAO)"
	playAgain <- readLn
	if (playAgain == 1) then (play) else  print "Obrigado por jogar!"
