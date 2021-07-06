$x = 10

switch ($x) {
    1 { "argument to jedynka" }
    2 { "argument to dwójka" }
    3 { "argument to trójka" }
    4 { "argument to czwórka" }
    "napis" { "argument to napis" }
    Default { "argument poza listą dozwolonych wartości" }
}

#Czemu nie if? Bo:
if ($x -eq 1) {
    "argument to jedynka"
}
elseif ($x -eq 2) {
    "argument to dwójka"
}
elseif ($x -eq 3) {
    "argument to trójka"
}
elseif ($x -eq 4) {
    "argument to czwórka"
}
elseif ($x -eq "napis") {
    "argument to napis"
}
else {
    "argument poza listą dozwolonych wartości"
}
