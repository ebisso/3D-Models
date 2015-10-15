
function sphere_distribution (N, k) =
    [cos(k * 180  * (3 - sqrt(5)))*sqrt(1-(k * (2 / N) - 1 + ((2 / N) / 2))*(k * (2 / N) - 1 + ((2 / N) / 2))), (k * (2 / N) - 1 + ((2 / N) / 2)), sin(k * 180 * (3 - sqrt(5)))*sqrt(1-(k * (2 / N) - 1 + ((2 / N) / 2))*(k * (2 / N) - 1 + ((2 / N) / 2)))]; 



for (i = [0:59]) {
    translate(sphere_distribution(60,i)) sphere(0.5, $fn=32);
}