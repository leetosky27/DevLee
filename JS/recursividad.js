function cuentaAtras(numero) {
    if (numero < 0) { return }
    console.log(numero)
    cuentaAtras(numero - 1)
}
cuentaAtras(5)

function factorial(n) {
    if (n === 0 || n === 1) {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
factorial(5)
function recursive(n) {
    if (n === 0) {
        return 0
    } else {
        return n + recursive(n - 1)
    }
}
recursive(10)