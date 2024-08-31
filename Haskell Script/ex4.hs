main :: IO ()
main = do
    putStrLn "Digite a temperatura em Fahrenheit: "
    f <- readLn :: IO Float
    let c = (f - 32) * 5 / 9
    putStrLn $ show f ++ " Fahrenheit é igual a " ++ show c ++ " Celsius."
