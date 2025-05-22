const suma = require('./app1');
test('La suma de 10 y 2 debe ser 12', () => {
    let total = suma(10, 2);    
    expect(total).toBe(10);
    }); 