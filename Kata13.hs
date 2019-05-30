import System.IO()
import Data.List()

--Transforma a arreglo el string --
parseFile :: String -> [String]
parseFile name = do
	lineas <- lines name
	let pr = lineas
	return pr

--Busca un caracter--
search :: Char -> String -> Bool
search a c = elem a c

--Busca un par de letras--
searchP :: [Char] -> String -> Bool
searchP a c = do
	let priml = elem (a !! 0) c
	let seg = elem (a !! 1) c
	priml && seg

{-searchEsp :: Char -> String -> Int-> Bool
searchEsp ch [] 0 = 1
searchEsp cd st con =  do
	let cn = con
	let b = cn-1
	let a = elem cd (st !! cn)
	return a !! searchEsp ch st-}
main = do
	x <- readFile "longitudCadena.hs" --cambiar nombre--
	let a = parseFile x
	let b = contarLineas a
	let c = excluirLin a 0 0
	let d = excluirPar a 0 0
	let res = b - c
	print res
	

--Cuenta el total de lineas--
contarLineas :: [String] -> Int
contarLineas arreglo = length arreglo

--Cantidad de comentarios de linea--
excluirLin :: [String]-> Int-> Int ->Int
excluirLin arreglo x c = do
	let tam = contarLineas arreglo
	if x >= tam
		then c
		else do 
			let pal =  arreglo !! x
			let revi = search '/' pal
			let num1 = x +1 
			let num2 = c
			let num3 = c +1
			if revi
				then excluirLin arreglo num1 num3
				else excluirLin arreglo num1 num2

excluirPar :: [String] -> Int -> Int -> Int
excluirPar arreglo x c = do
	let tam = contarLineas arreglo
	if x>=tam
		then c+1
		else do
			let pal = arreglo !! x
			let revi = searchP "/*" pal
			let revi2 = searchP "*/" pal
			let num1 = x+1
			let num2 = c
			let num3 = c+1
			if revi
				then excluirPar arreglo num1 num3
				else do
					if revi2
						then excluirPar arreglo num1 num3 
						else excluirPar arreglo num1 num2
				


{-excluirEsp :: [String] -> Int -> Int -> Int
excluirEsp arreglo x c = do
	let tam = contarLineas arreglo
	if x>=tam
		then c
		else do
			let pal = arreglo !! x
			let revi = search "" pal
			let num1 = x+1
			let num2 = c
			let nuum3 = c+1
			if revi-}

{-excluirPar :: [String] -> Int -> Int -> Int
excluirPar arreglo x c = do
	let tam = contarLineas arreglo
	if x >= tam
		then c
		else do
			let pal = arreglo !! x
			let revi = searchP "/*" pal
			let revi2 = searchP "*/" pal
			let num1 = x +1 
			let num2 = c
			let num3 = c +1
			if (revi)
				then excluirPar arreglo-}

{-then excluirLin arreglo (x+1) (y+1)
else return excluirLin arreglo (x+1) y-}
	--then return excluirLin arreglo (x+1) y--


--contarLineas :: [String] -> Int -> IO Int --
--contarLineas arreglo x = do --
	--if length arreglo --
	--	then return x --
	--	else do  --
	--		let prt <- arreglo !! 0 --
	--		if search '/' prt --
	--			then contarLineas arreglo x --
	--			else contarLineas arreglo (x+1) ---
