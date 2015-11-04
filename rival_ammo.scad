difference()
{
    sphere(0.85, $fn=32);
    holes();
}



function sphere_distribution (N, k) =
    [cos(k * 180  * (3 - sqrt(5)))*sqrt(1-(k * (2 / N) - 1 + ((2 / N) / 2))*(k * (2 / N) - 1 + ((2 / N) / 2))), (k * (2 / N) - 1 + ((2 / N) / 2)), sin(k * 180 * (3 - sqrt(5)))*sqrt(1-(k * (2 / N) - 1 + ((2 / N) / 2))*(k * (2 / N) - 1 + ((2 / N) / 2)))]; 


module holes()
{
for (i = [0:128]) {
    translate(sphere_distribution(128,i)) sphere(0.2, $fn=16);
}
}