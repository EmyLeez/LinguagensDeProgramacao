main :: IO ()
main = do
    n <- solicitarPositivo "Digite o valor de n (positivo): "
    print (take n [x | x <- [1,3..]])

solicitarPositivo :: String -> IO Int
solicitarPositivo prompt = do
    putStrLn prompt
    n <- readLn :: IO Int
    if n <= 0
        then do
            putStrLn "Por favor, digite um número positivo."
            solicitarPositivo prompt
        else return n
