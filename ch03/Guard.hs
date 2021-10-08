fromMaybe :: a -> Maybe a -> a
fromMaybe def wrapped = case wrapped of
                        Nothing -> def
                        Just x -> x
