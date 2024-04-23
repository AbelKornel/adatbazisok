SELECT * FROM Vendeg 

CREATE user proba without login
grant SELECT on Vendeg to proba
execute as user = 'proba'
SELECT * FROM Vendeg
revert
SELECT * FROM Vendeg