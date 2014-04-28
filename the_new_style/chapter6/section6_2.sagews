︠9ea6c3c1-9929-4b0e-8ceb-4991126b6e6fi︠
%md
# Sage and diagonalization of Matrices
︡fa9bcf47-e759-41a6-9742-62c4ef4d67a1︡{"html":"<h1>Sage and diagonalization of Matrices</h1>\n"}︡
︠cc5e4dfa-7f9e-4b5e-9a01-43770f3352ed︠
A = matrix(AA, 3,3, [1,2,3,4,5,6,7,8,-1]); A.rank()
︡09acb4b2-0dc5-4eb6-9d6b-cd35847683a6︡{"stdout":"3\n"}︡
︠d82fdca2-1b80-4cfb-acf2-fd14d8b31758i︠
%md
Sage has built-in commands about diagonalization. Let's try a few out:
︡66c87139-b26d-4cdf-b99a-4a05232313a4︡{"html":"<p>Sage has built-in commands about diagonalization. Let&#8217;s try a few out:</p>\n"}︡
︠d9c5be6b-1468-49b9-9f3e-6f45dad20884︠
A.is_diagonalizable()
︡50a1dcc3-1f39-4ded-b311-c75674d1a7fd︡{"stdout":"True\n"}︡
︠9f4fcce1-0229-43d8-b94b-13e747cda7e5i︠
%md
Sage has a command for finding the eigenvector decomposition $A = S\Lambda S^{-1}$
︡6da4b580-2d94-4b86-8ce0-0287db44238b︡{"html":"<p>Sage has a command for finding the eigenvector decomposition $A = S\\Lambda S^{-1}$</p>\n"}︡
︠83ab3fd9-65e1-4433-916e-d8b9a51f9ac2︠
## Sage has a command for jumping right to the matrix decomposition!
A.eigenmatrix_right()
︡0c8847b7-b22b-4071-869f-4093f1596ec1︡{"stdout":"([ 11.816056999423874?                    0                    0]\n[                   0 -0.3954315737468559?                    0]\n[                   0                    0  -6.420625425677017?], [  1.000000000000000?   1.000000000000000?   1.000000000000000?]\n[  2.369820536283515?  -0.866496699124881?   1.460961877127081?]\n[  2.025471975618948? 0.11252060816763521?  -3.447516393310393?])\n"}︡
︠cdeb32ce-fe8e-4352-a1d4-5f7139dc3769︠
Lambda, S = A.eigenmatrix_right()
︡ada7a084-0f1e-4aad-abdd-36df5f7c37ed︡
︠69bac91e-fe10-4bba-a881-f97131c136e0︠
Lambda
︡1113f727-dba6-4c83-8cb1-d92c3f0acdec︡{"stdout":"[ 11.816056999423874?                    0                    0]\n[                   0 -0.3954315737468559?                    0]\n[                   0                    0  -6.420625425677017?]\n"}︡
︠d93d47e1-0e5d-4003-98e3-517cf122d60c︠
S
︡f497eec6-7e3d-46c8-80d1-c9d6173ea7d6︡{"stdout":"[  1.000000000000000?   1.000000000000000?   1.000000000000000?]\n[  2.369820536283515?  -0.866496699124881?   1.460961877127081?]\n[  2.025471975618948? 0.11252060816763521?  -3.447516393310393?]\n"}︡
︠0db00523-6f7d-4403-b560-fc41026fec3e︠
# note that S has the eigenvectors as its columns!
A.eigenvectors_right()
︡ae03975b-3b83-4486-be4a-0b3cf64b5376︡{"stdout":"[(11.816056999423874?, [\n(1.000000000000000?, 2.369820536283515?, 2.025471975618948?)\n], 1), (-0.3954315737468559?, [\n(1.000000000000000?, -0.866496699124881?, 0.11252060816763521?)\n], 1), (-6.420625425677017?, [\n(1.000000000000000?, 1.460961877127081?, -3.447516393310393?)\n], 1)]\n"}︡
︠3f1eb324-46e4-4008-8e7d-cb637aaaad6f︠
# anyway,  we can now check:

S * Lambda * S.inverse()
︡b0c5b158-dfad-4400-9084-f90c3eec7e1b︡{"stdout":"[ 1.000000000000000?  2.000000000000000?  3.000000000000000?]\n[ 4.000000000000000?  5.000000000000000?  6.000000000000000?]\n[ 7.000000000000000?   8.00000000000000? -1.000000000000000?]\n"}︡
︠ff7dfd56-ba2c-4367-adc3-4ddd607b165f︠
S * Lambda * S.inverse() == A
︡a0a2c3c0-ec2e-456e-9318-765264032feb︡{"stdout":"True"}︡{"stdout":"\n"}︡
︠ada83ae2-d35a-471f-88e7-a340d03e9c1f︠









