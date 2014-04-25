︠3b813601-42e5-4368-a9cd-26b993af3a86i︠
%md
# Section 6.1: Eigenvalues and Eigenvectors

Since eigenvectors are found using standard techniques, we can use Sage to find them easily.
︡c1140729-6130-4073-bade-5fdae96c8e76︡{"html":"<h1>Section 6.1: Eigenvalues and Eigenvectors</h1>\n\n<p>Since eigenvectors are found using standard techniques, we can use Sage to find them easily.</p>\n"}︡
︠a4b70cba-2dcf-4caf-9aab-fed13a94b52b︠
## using nullspaces and root finding commands
︡0f52a991-aef4-41a3-ae4d-ebd30cacd55b︡
︠7051ebc5-874b-4360-9604-d9b58ac2a7ca︠
X = matrix(QQ, 3,3, [1,2,3, 4,5,6, 7,8,9]); X
︡f56b297a-9bde-47e6-9994-be418eaba42f︡{"stdout":"[1 2 3]\n[4 5 6]\n[7 8 9]\n"}︡
︠9a23a0f8-b24b-4ffd-9bc8-c2cd17029859︠
var('t')
poly = (X-t*identity_matrix(3)).determinant(); poly
︡ba8c3b17-2153-4260-b235-d52cc55efee2︡{"stdout":"t\n"}︡{"stdout":"-((t - 5)*(t - 9) - 48)*(t - 1) + 29*t + 3\n"}︡
︠045e00ac-7aed-4432-a687-8806993f133e︠
poly.roots()


︡6bf04c53-8bc9-4f7d-9b47-bb2977060227︡{"stdout":"[(-3/2*sqrt(33) + 15/2, 1), (3/2*sqrt(33) + 15/2, 1), (0, 1)]\n"}︡
︠a2d80b03-a333-419c-84bb-ef2d7f884466︠
#let's pick one out. the first one, say.
︡38833a03-2e73-4500-a464-12509be2f9e5︡
︠3b8c4cd9-ca07-4a33-9af1-b1125e475d12︠
lam = poly.roots()[0][0]; lam.simplify()

︡a0147620-2226-4ee2-bd53-520f3db543e6︡{"stdout":"-3/2*sqrt(33) + 15/2\n"}︡
︠8a3dba0a-b9f7-4be8-927e-f1509053d9cd︠
#and now we can find an eigenvector which corresponds
V = (X - lam*identity_matrix(3)).right_kernel(); V
︡a648f5d7-a8b0-4ec3-85f0-36b4474d83ad︡{"stdout":"Vector space of degree 3 and dimension 1 over Symbolic Ring\nBasis matrix:\n[                                                                                                                                                                                     1 -2*(4/(3*sqrt(33) - 13) - 1)/((3*sqrt(33) - 32/(3*sqrt(33) - 13) - 5)*(1/(3*sqrt(33) - 13) + 8*(4/(3*sqrt(33) - 13) - 1)/((3*sqrt(33) - 32/(3*sqrt(33) - 13) - 5)*(3*sqrt(33) - 13))))                                                                   -1/6/(1/(3*sqrt(33) - 13) + 8*(4/(3*sqrt(33) - 13) - 1)/((3*sqrt(33) - 32/(3*sqrt(33) - 13) - 5)*(3*sqrt(33) - 13)))]\n"}︡
︠1a4419dd-0e3e-4fb9-80cd-8e75d6c3ca7b︠
# That is a little messy. we can clean up
show(V.basis()[0])
︡d97ddc9d-a49a-4ddc-8ffe-80efdb1074dc︡{"tex":{"tex":"\\left(1,\\,-\\frac{2 \\, {\\left(\\frac{4}{3 \\, \\sqrt{33} - 13} - 1\\right)}}{{\\left(3 \\, \\sqrt{33} - \\frac{32}{3 \\, \\sqrt{33} - 13} - 5\\right)} {\\left(\\frac{1}{3 \\, \\sqrt{33} - 13} + \\frac{8 \\, {\\left(\\frac{4}{3 \\, \\sqrt{33} - 13} - 1\\right)}}{{\\left(3 \\, \\sqrt{33} - \\frac{32}{3 \\, \\sqrt{33} - 13} - 5\\right)} {\\left(3 \\, \\sqrt{33} - 13\\right)}}\\right)}},\\,-\\frac{1}{6 \\, {\\left(\\frac{1}{3 \\, \\sqrt{33} - 13} + \\frac{8 \\, {\\left(\\frac{4}{3 \\, \\sqrt{33} - 13} - 1\\right)}}{{\\left(3 \\, \\sqrt{33} - \\frac{32}{3 \\, \\sqrt{33} - 13} - 5\\right)} {\\left(3 \\, \\sqrt{33} - 13\\right)}}\\right)}}\\right)","display":true}}︡
︠980f52eb-470c-41ba-a3f1-af44582b4cdf︠
#complicated expression. I don't feel like trying to simplify it. (Certainly it could be simplified.)
︠cc93815c-caa4-4be6-976c-3b666be3485fi︠
%md
Sage has some built-in commands you will find useful.
︡1fde6ef4-db71-40bc-b212-fef617fee4ba︡{"html":"<p>Sage has some built-in commands you will find useful.</p>\n"}︡
︠5deec484-123d-4fea-9892-e4f6c4746223i︠
## methods on the matrix class
A = matrix(AA, 4,4, [3,134,-123,4, 2,1,34,4, 2,36,54,7, 0,0,3,1]); A
︡571fb291-f4e9-415a-9880-92ce0d008899︡{"stdout":"[   3  134 -123    4]\n[   2    1   34    4]\n[   2   36   54    7]\n[   0    0    3    1]\n"}︡
︠19977f0f-1814-445b-8cbb-cea9cef07766︠
A.characteristic_polynomial()
︡7e425ff1-e5fb-4212-ae54-a974e122ee00︡{"stdout":"x^4 - 59*x^3 - 990*x^2 + 18135*x - 14675\n"}︡
︠3903bf4f-5b28-43db-a5c7-9f112ada98cd︠

︠0b00eceb-fe34-4238-b66c-9bcac30ee918︠
A.eigenvalues()
︡4b6a5225-5534-4927-8975-7336ec5d38a4︡{"stdout":"[69.53081099300302?, 11.05698737848054?, 0.8506882587213876?, -22.43848663020495?]"}︡{"stdout":"\n"}︡
︠d5cfc3fa-5820-4865-bea4-9f4f9321c3b9︠
A.eigenvectors_right() # each is reported as a tuple:  eigenvalue, eigenvector, algebraic multiplicity
︡fb133bd4-d125-4825-9f26-26cb16d16c38︡{"stdout":"[(69.53081099300302?, [\n(1.000000000000000?, -0.528436581324001?, -1.118187900426261?, -0.04894971550272887?)\n], 1), (11.05698737848054?, [\n(1.000000000000000?, 0.01144054733225562?, -0.0535598509288846?, -0.01597690707363005?)\n], 1), (0.8506882587213876?, [\n(1.000000000000000?, 0.04966426789720876?, 0.0432924087973601?, -0.8698393393573253?)\n], 1), (-22.43848663020495?, [\n(1.00000000000000?, -0.148856625545142?, 0.0444628842981729?, -0.00569100962016132?)\n], 1)]"}︡{"stdout":"\n"}︡
︠a978456b-f4ad-400d-b236-9276e47238e0︠
A.eigenspaces_right() # this makes the eigenspaces

︡7bb12daf-d9ed-4933-9c4a-79fc34eaaa5e︡{"stdout":"[\n(69.53081099300302?, Vector space of degree 4 and dimension 1 over Algebraic Real Field\nUser basis matrix:\n[   1.000000000000000?   -0.528436581324001?   -1.118187900426261? -0.04894971550272887?]),\n(11.05698737848054?, Vector space of degree 4 and dimension 1 over Algebraic Real Field\nUser basis matrix:\n[   1.000000000000000?  0.01144054733225562?  -0.0535598509288846? -0.01597690707363005?]),\n(0.8506882587213876?, Vector space of degree 4 and dimension 1 over Algebraic Real Field\nUser basis matrix:\n[  1.000000000000000? 0.04966426789720876?  0.0432924087973601? -0.8698393393573253?]),\n(-22.43848663020495?, Vector space of degree 4 and dimension 1 over Algebraic Real Field\nUser basis matrix:\n[    1.00000000000000?   -0.148856625545142?   0.0444628842981729? -0.00569100962016132?])\n]\n"}︡
︠595aeaae-2fe5-47cb-954d-ba94ededd2c1i︠
%md
Let's try another example
︡17fbec7e-b130-4caf-aa8c-dba62eb70629︡{"html":"<p>Let&#8217;s try another example</p>\n"}︡
︠85d2f4a3-06ae-4063-9ca5-c1618e291bf5︠
B = matrix(AA, 2,2, [5,1,0,5]); B
︡86a65231-52c9-4e6e-93dd-9c9d08e24bce︡{"stdout":"[5 1]\n[0 5]\n"}︡
︠d01c4c4f-4a56-4f8d-a95b-fe37154e0041︠
B.eigenvalues() # only one eigenvalue
︡648889e1-f0db-4b34-9ff9-d41272fb36e6︡{"stdout":"[5, 5]\n"}︡
︠f4464614-6bef-4eaa-ad79-c78325a43606︠
B.eigenvectors_right() # 5 is an eigenvalue, it has algebraic multiplicty 2
︡f6f2a032-544c-4645-ac0c-012ad4f87930︡{"stdout":"[(5, [\n(1, 0)\n], 2)]\n"}︡
︠6f3ecbb7-49fc-4b66-9544-b64d9490543e︠
B.eigenspaces_right() # but geometric multiplicity 1
︡932b1bae-0de6-493f-8eec-99f234608465︡{"stdout":"[\n(5, Vector space of degree 2 and dimension 1 over Algebraic Real Field\nUser basis matrix:\n[1 0])\n]\n"}︡
︠ad066509-bbae-4ac5-8248-0a595d468deb︠









