main :: IO ()
main = do
    n <- solicitarPositivo "Digite um número inteiro positivo: "
    if ehPrimo n
        then putStrLn $ show n ++ " é primo."
        else putStrLn $ show n ++ " não é primo."

ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo n = null [x | x <- [2..n-1], n `mod` x == 0]

solicitarPositivo :: String -> IO Int
solicitarPositivo prompt = do
    putStrLn prompt
    n <- readLn :: IO Int
    if n <= 0
        then do
            putStrLn "Por favor, digite um número positivo."
            solicitarPositivo prompt
        else return n
