︠b8e0b15c-aa6e-4922-b4f1-dcabe020c62ei︠
%md
# Section 4.4: Orthonormal Bases, Orthogonal Matrices, and Gram-Schmidt
︡6332a38a-e7bd-4d72-9b09-702ef8f96310︡{"html":"<h1>Section 4.4: Orthonormal Bases, Orthogonal Matrices, and Gram-Schmidt</h1>\n"}︡
︠c02dc260-edca-427c-b67a-7f0e664a3050i︠
%md
Sage has a built in command to find the QR decomposition of a matrix. Essentially, it does the GS algorithm under the hood.

If you check the documentation, you will see that the matrix has to be defined over a special type of ring, so use QQbar.
︡40d5a2e5-32f4-4b67-a0b5-fdd3bcf18cd1︡{"html":"<p>Sage has a built in command to find the QR decomposition of a matrix. Essentially, it does the GS algorithm under the hood.</p>\n\n<p>If you check the documentation, you will see that the matrix has to be defined over a special type of ring, so use QQbar.</p>\n"}︡

︠942659e2-2af3-488e-afe2-e299ca90a683︠
A = matrix(QQbar, 4,4, [1,-1,0,0, 0,1,-1,0, 0,0,1,-1, 1,1,1,1]); A
︡d4365fca-67df-4aba-83fd-e1990ddc4940︡{"stdout":"[ 1 -1  0  0]\n[ 0  1 -1  0]\n[ 0  0  1 -1]\n[ 1  1  1  1]\n"}︡
︠e7d0661b-a0d6-4563-b8e8-51bdb6d68ff4︠
Q, R = A.QR()
︡8199ac5f-01da-4141-abd0-214ba62738b7︡
︠76f6461d-7ad0-4a50-b844-562ca49b9eb4︠
Q

︡1e8cff9e-5042-4a43-b14f-ba33140ab649︡{"stdout":"[ 0.7071067811865475? -0.5773502691896258? -0.3162277660168379? -0.2581988897471611?]\n[                   0  0.5773502691896258? -0.6324555320336758?  -0.516397779494323?]\n[                   0                    0  0.6324555320336758?  -0.774596669241484?]\n[ 0.7071067811865475?  0.5773502691896258?  0.3162277660168379?  0.2581988897471611?]\n"}︡
︠d8660f38-1bc0-450f-b982-3c49469bbb5d︠
Q*Q.transpose()
︡65283add-f096-424a-b925-44cc4297b3df︡{"stdout":"[1 0 0 0]\n[0 1 0 0]\n[0 0 1 0]\n[0 0 0 1]\n"}︡
︠96188c38-eabe-4e4d-8797-941423af904e︠
## That is machine language for "I am pretty sure that's the identity." Those question marks are for machine precision representation of exact numbers.

R
︡f236711a-8cc1-41a2-bee8-7da161ef00a8︡{"stdout":"[  1.414213562373095?                    0  0.7071067811865475?  0.7071067811865475?]\n[                   0   1.732050807568878?                    0  0.5773502691896258?]\n[                   0                    0   1.581138830084190? -0.3162277660168379?]\n[                   0                    0                    0   1.032795558988645?]\n"}︡
︠a6d674d1-5543-4757-a7c4-66c81d4fcf3f︠
Q*R
︡3f23eb7a-af2f-4a00-9b81-5193d381c291︡{"stdout":"[ 1 -1  0  0]\n[ 0  1 -1  0]\n[ 0  0  1 -1]\n[ 1  1  1  1]\n"}︡
︠a6b8fc46-d08a-4307-93e4-0397916fa764︠
Q*R == A
︡189f2398-af57-4d09-adf1-a2ad06de38c2︡{"stdout":"True\n"}︡
︠a9b19ea0-749d-455f-a4ea-6d56525ae20c︠
︡b83d8ac5-73af-4533-b92c-4ee22af1b2d8︡
︠d8afe183-b7d4-40c2-a744-59ca3d6e22f6︠

## This is weird, and I can't quite explain it. If you evaluate all of those cells the first time, you get the notation with ?s. If you go back and re-evaluate them, lots of stuff turns into truly exact numbers--i.e. just integers show up.

︡340ab114-1be4-4a72-b414-f79cbc455ba9︡
︠ad884a64-d8f4-4f9b-b276-6b1f46cc8b77︠









