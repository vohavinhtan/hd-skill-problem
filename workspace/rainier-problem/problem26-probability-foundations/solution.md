## Steps

Step 1: Bound the possible atom at the origin

Since $z_i\geq0$, the event $R=0$ is exactly the event $(s_1,s_2,s_3)=(0,0,0)$. Consider
$$
H(R)=\frac{(R-1)^2(R-\frac32)^2(R-2)^2}{9}.
$$
This polynomial is nonnegative, and
$$
H(0)=\frac{1\cdot(\frac32)^2\cdot2^2}{9}=1.
$$
Therefore
$$
\Lambda(\{(0,0,0)\})\leq \int H(R)\,d\Lambda.
$$

Expand the factors:
$$
(R-1)^2=R^2-2R+1,
$$
$$
(R-\tfrac32)^2=R^2-3R+\frac94,
$$
$$
(R-2)^2=R^2-4R+4.
$$
Then
$$
(R^2-2R+1)(R^2-3R+\tfrac94)
=R^4-5R^3+\frac{37}{4}R^2-\frac{15}{2}R+\frac94.
$$
Multiplying this by $R^2-4R+4$ and dividing by $9$ gives
$$
H(R)=1-\frac{13}{3}R+\frac{277}{36}R^2-\frac{43}{6}R^3+\frac{133}{36}R^4-R^5+\frac19R^6.
$$
Using the stated moments,
$$
\begin{aligned}
\int H(R)\,d\Lambda
&=1-\frac{13}{3}\cdot\frac97+\frac{277}{36}\cdot\frac{29}{14}-\frac{43}{6}\cdot\frac{99}{28}\\
&+\frac{133}{36}\cdot\frac{353}{56}-\frac{1299}{112}+\frac19\cdot\frac{4889}{224}.
\end{aligned}
$$
Put all terms over $2016$:
$$
\begin{aligned}
1&=\frac{2016}{2016},\\
-\frac{13}{3}\cdot\frac97&=-\frac{39}{7}=-\frac{11232}{2016},\\
\frac{277}{36}\cdot\frac{29}{14}&=\frac{8033}{504}=\frac{32132}{2016},\\
-\frac{43}{6}\cdot\frac{99}{28}&=-\frac{4257}{168}=-\frac{51084}{2016},\\
\frac{133}{36}\cdot\frac{353}{56}&=\frac{46949}{2016},\\
-\frac{1299}{112}&=-\frac{23382}{2016},\\
\frac19\cdot\frac{4889}{224}&=\frac{4889}{2016}.
\end{aligned}
$$
Thus
$$
\int H(R)\,d\Lambda
=\frac{2016-11232+32132-51084+46949-23382+4889}{2016}
=\frac{288}{2016}
=\frac17.
$$
So
$$
\Lambda(\{(0,0,0)\})\leq\frac17.
$$
Equality can occur only when $H(R)=0$ away from the origin, so every extremizer must have
$$
R\in\left\{0,1,\frac32,2\right\}
$$
almost surely.

Step 2: Determine the masses on the three nonzero $R$-slices

Assume equality in the bound, so the origin has mass $1/7$. Let the masses of the slices $R=1,\frac32,2$ be $a,b,c$. Then
$$
a+b+c=\frac67.
$$
The first two $R$-moments give
$$
a+\frac32b+2c=\frac97,
$$
and
$$
a+\frac94b+4c=\frac{29}{14}.
$$
Subtracting $a+b+c=6/7$ from $a+\frac32b+2c=9/7$ gives
$$
\frac12b+c=\frac37.
$$
Subtracting $a+\frac32b+2c=9/7$ from $a+\frac94b+4c=29/14$ gives
$$
\frac34b+2c=\frac{11}{14}.
$$
Twice $\frac12b+c=\frac37$ is
$$
b+2c=\frac67.
$$
Subtracting $\frac34b+2c=\frac{11}{14}$ gives
$$
\frac14b=\frac67-\frac{11}{14}=\frac1{14}.
$$
Therefore
$$
b=\frac27.
$$
Then
$$
\frac12\cdot\frac27+c=\frac37
$$
gives
$$
c=\frac27.
$$
Finally,
$$
a=\frac67-\frac27-\frac27=\frac27.
$$
So the nonzero slices $R=1,\frac32,2$ each have mass $2/7$.

Step 3: Separate the first three $Q$-moments by the value of $R$

For $j=1,2,3$, define
$$
A_j=\int_{R=1}Q^j\,d\Lambda,\quad
B_j=\int_{R=3/2}Q^j\,d\Lambda,\quad
C_j=\int_{R=2}Q^j\,d\Lambda.
$$
Then
$$
A_j+B_j+C_j=\int Q^j\,d\Lambda,
$$
$$
A_j+\frac32B_j+2C_j=\int RQ^j\,d\Lambda,
$$
and
$$
A_j+\frac94B_j+4C_j=\int R^2Q^j\,d\Lambda.
$$

For $j=1$, substituting the three given moments gives
$$
A_1+B_1+C_1=\frac{13}{24},
$$
$$
A_1+\frac32B_1+2C_1=\frac{317}{336},
$$
$$
A_1+\frac94B_1+4C_1=\frac{1147}{672}.
$$
Solving this system gives
$$
(A_1,B_1,C_1)=\left(\frac{5}{84},\frac{9}{56},\frac{9}{28}\right).
$$
After division by the slice mass $2/7$, the conditional first moments of $Q$ on $R=1,\frac32,2$ are
$$
\left(\frac{5}{24},\frac{9}{16},\frac98\right).
$$

For $j=2$, the same three equations give
$$
(A_2,B_2,C_2)=\left(\frac{17}{1008},\frac{81}{896},\frac{41}{112}\right).
$$
Thus the conditional second moments are
$$
\left(\frac{17}{288},\frac{81}{256},\frac{41}{32}\right).
$$

For $j=3$, the same three equations give
$$
(A_3,B_3,C_3)=\left(\frac{59}{12096},\frac{729}{14336},\frac{27}{64}\right).
$$
Thus the conditional third moments are
$$
\left(\frac{59}{3456},\frac{729}{4096},\frac{189}{128}\right).
$$

On the slice $R=\frac32$,
$$
\frac{81}{256}=\left(\frac{9}{16}\right)^2.
$$
So $Q$ has zero variance on this slice. Hence
$$
Q=\frac{9}{16}
$$
whenever $R=\frac32$.

Step 4: Recover the possible $Q$-values on the slices $R=1$ and $R=2$

Since $Q=9/16$ on the slice $R=\frac32$, the contribution of that slice to $\int Q^4\,d\Lambda$ is
$$
\frac27\left(\frac{9}{16}\right)^4.
$$
Let
$$
A_4=\int_{R=1}Q^4\,d\Lambda,\quad
C_4=\int_{R=2}Q^4\,d\Lambda.
$$
The given $Q^4$ and $RQ^4$ moments give
$$
A_4+C_4+\frac27\left(\frac{9}{16}\right)^4=\frac{9692401}{18579456},
$$
and
$$
A_4+2C_4+\frac32\cdot\frac27\left(\frac{9}{16}\right)^4=\frac{38184659}{37158912}.
$$
Subtracting the first equation from the second gives
$$
C_4=\frac{881}{1792}.
$$
Then
$$
A_4=\frac{9692401}{18579456}-\frac{881}{1792}-\frac27\left(\frac{9}{16}\right)^4
=\frac{209}{145152}.
$$
After division by $2/7$,
$$
E(Q^4\mid R=1)=\frac{209}{41472},
\qquad
E(Q^4\mid R=2)=\frac{881}{512}.
$$

On $R=1$, the range is $0\leq Q\leq1/3$. The polynomial
$$
Q\left(\frac13-Q\right)\left(Q-\frac14\right)^2
$$
is nonnegative on $[0,1/3]$. It expands to
$$
Q\left(\frac13-Q\right)\left(Q-\frac14\right)^2
=\frac{1}{48}Q-\frac{11}{48}Q^2+\frac56Q^3-Q^4.
$$
Its conditional expectation on $R=1$ is
$$
\frac{1}{48}\cdot\frac{5}{24}
-\frac{11}{48}\cdot\frac{17}{288}
+\frac56\cdot\frac{59}{3456}
-\frac{209}{41472}
=\frac{180-561+590-209}{41472}
=0.
$$
Therefore
$$
Q\in\left\{0,\frac14,\frac13\right\}
$$
on $R=1$.

Let the conditional weights at $Q=0,\frac14,\frac13$ be $u,v,w$. Then
$$
u+v+w=1,
$$
$$
\frac14v+\frac13w=\frac{5}{24},
$$
and
$$
\frac1{16}v+\frac19w=\frac{17}{288}.
$$
Multiplying $\frac14v+\frac13w=\frac{5}{24}$ by $1/4$ gives
$$
\frac1{16}v+\frac1{12}w=\frac{5}{96}=\frac{15}{288}.
$$
Subtracting $\frac1{16}v+\frac19w=\frac{17}{288}$ gives
$$
\left(\frac1{12}-\frac19\right)w=\frac{15}{288}-\frac{17}{288}=-\frac{2}{288}.
$$
Since $1/12-1/9=-1/36$,
$$
w=\frac14.
$$
Then
$$
\frac14v+\frac1{12}=\frac5{24}
$$
gives
$$
v=\frac12,
$$
and hence
$$
u=\frac14.
$$

On $R=2$, the range is $1\leq Q\leq4/3$. The polynomial
$$
(Q-1)\left(\frac43-Q\right)\left(Q-\frac54\right)^2
$$
is nonnegative on $[1,4/3]$. It expands to
$$
(Q-1)\left(\frac43-Q\right)\left(Q-\frac54\right)^2
=-\frac{25}{12}+\frac{335}{48}Q-\frac{419}{48}Q^2+\frac{29}{6}Q^3-Q^4.
$$
Its conditional expectation on $R=2$ is
$$
-\frac{25}{12}
+\frac{335}{48}\cdot\frac98
-\frac{419}{48}\cdot\frac{41}{32}
+\frac{29}{6}\cdot\frac{189}{128}
-\frac{881}{512}
=\frac{-3200+12060-17179+10962-2643}{1536}
=0.
$$
Therefore
$$
Q\in\left\{1,\frac54,\frac43\right\}
$$
on $R=2$.

Let the conditional weights at $Q=1,\frac54,\frac43$ be $r,s,t$. Then
$$
r+s+t=1,
$$
$$
r+\frac54s+\frac43t=\frac98,
$$
and
$$
r+\frac{25}{16}s+\frac{16}{9}t=\frac{41}{32}.
$$
Subtracting $r+s+t=1$ from $r+\frac54s+\frac43t=\frac98$ gives
$$
\frac14s+\frac13t=\frac18.
$$
Subtracting $r+s+t=1$ from $r+\frac{25}{16}s+\frac{16}{9}t=\frac{41}{32}$ gives
$$
\frac9{16}s+\frac79t=\frac9{32}.
$$
Multiplying $\frac14s+\frac13t=\frac18$ by $9/4$ gives
$$
\frac9{16}s+\frac34t=\frac9{32}.
$$
Subtracting gives
$$
\left(\frac79-\frac34\right)t=0.
$$
Since $7/9-3/4=1/36$,
$$
t=0.
$$
Then
$$
\frac14s=\frac18,
$$
so
$$
s=\frac12,\qquad r=\frac12.
$$

Step 5: Use the $P$-moments to identify the actual triples

Let
$$
A_P=\int_{R=1}P\,d\Lambda,\quad
B_P=\int_{R=3/2}P\,d\Lambda,\quad
C_P=\int_{R=2}P\,d\Lambda.
$$
The three identities for $P,RP,R^2P$ give
$$
A_P+B_P+C_P=\frac{85}{1512},
$$
$$
A_P+\frac32B_P+2C_P=\frac{305}{3024},
$$
and
$$
A_P+\frac94B_P+4C_P=\frac{1123}{6048}.
$$
Solving these equations gives
$$
(A_P,B_P,C_P)=\left(\frac1{378},\frac1{56},\frac1{28}\right).
$$
After division by the slice mass $2/7$, the conditional $P$-moments are
$$
\left(\frac1{108},\frac1{16},\frac18\right).
$$

We also need the conditional second moments of $P$. Let
$$
A_{P^2}=\int_{R=1}P^2\,d\Lambda,\quad
B_{P^2}=\int_{R=3/2}P^2\,d\Lambda,\quad
C_{P^2}=\int_{R=2}P^2\,d\Lambda.
$$
From the two stated moments of $P^2$,
$$
A_{P^2}+B_{P^2}+C_{P^2}=\frac{6625}{653184},
$$
and
$$
A_{P^2}+\frac32B_{P^2}+2C_{P^2}=\frac{25643}{1306368}.
$$
Once the $R=\frac32$ slice is identified below, it has $P=1/16$, so
$$
B_{P^2}=\frac27\cdot\frac1{256}=\frac1{896}.
$$
Substituting this value gives
$$
A_{P^2}+C_{P^2}
=\frac{6625}{653184}-\frac1{896}
=\frac{737}{81648},
$$
and
$$
A_{P^2}+2C_{P^2}
=\frac{25643}{1306368}-\frac32\cdot\frac1{896}
=\frac{733}{40824}.
$$
Subtracting gives
$$
C_{P^2}=\frac1{112},
$$
and hence
$$
A_{P^2}=\frac1{10206}.
$$
After division by $2/7$, the conditional second moments on $R=1,\frac32,2$ are
$$
\left(\frac1{2916},\frac1{256},\frac1{32}\right).
$$

On $R=1$, the slice weights from the $Q$-analysis are $1/4,1/2,1/4$ at $Q=0,\frac14,\frac13$. If $R=1$ and $Q=0$, then $(z_1,z_2,z_3)$ is in the orbit of $(1,0,0)$, and $P=0$. If $R=1$ and $Q=\frac13$, equality in $Q\leq R^2/3$ gives $(z_1,z_2,z_3)=(\frac13,\frac13,\frac13)$, and $P=1/27$. This atom alone contributes
$$
\frac14\cdot\frac1{27}=\frac1{108},
$$
which equals the whole conditional value $E(P\mid R=1)$. Hence all the $Q=1/4$ mass has $P=0$, so it is the orbit of $(\frac12,\frac12,0)$.

On $R=\frac32$, we have $Q=\frac{9}{16}$. For three real roots with elementary symmetric data $R,Q,P$, the discriminant is
$$
\Delta=R^2Q^2-4Q^3-4R^3P+18RQP-27P^2.
$$
Substituting $R=\frac32$ and $Q=\frac9{16}$ gives
$$
\Delta=27P\left(\frac1{16}-P\right).
$$
Since the $z_i$ are real, $\Delta\geq0$, and since $z_i\geq0$, also $P\geq0$. Therefore
$$
0\leq P\leq\frac1{16}
$$
on this slice. The conditional mean already equals $1/16$, so $P=1/16$ almost surely on $R=\frac32$.

The cubic with roots $z_1,z_2,z_3$ is therefore
$$
t^3-\frac32t^2+\frac9{16}t-\frac1{16}.
$$
Since
$$
(t-1)\left(t-\frac14\right)^2
=t^3-\frac32t^2+\frac9{16}t-\frac1{16},
$$
the orbit is $(1,\frac14,\frac14)$.

On $R=2$, the slice weights from the $Q$-analysis are $1/2,1/2,0$ at $Q=1,\frac54,\frac43$. We must still justify the value of $P$ on the first two $Q$-slices.

If $R=2$ and $Q=1$, the discriminant formula gives
$$
\Delta=P(4-27P),
$$
so
$$
0\leq P\leq\frac4{27}.
$$
If $R=2$ and $Q=\frac54$, the discriminant formula gives
$$
\Delta=-27P^2+13P-\frac{25}{16}
=27\left(P-\frac{25}{108}\right)\left(\frac14-P\right),
$$
so
$$
\frac{25}{108}\leq P\leq\frac14.
$$
Let $X$ denote the random value of $P$ on the $Q=1$ slice and $Y$ the random value of $P$ on the $Q=\frac54$ slice, with each slice having conditional weight $1/2$ inside $R=2$. The conditional moments give
$$
\frac12E(X)+\frac12E(Y)=\frac18,
$$
and
$$
\frac12E(X^2)+\frac12E(Y^2)=\frac1{32}.
$$
Equivalently,
$$
E(X)+E(Y)=\frac14,
$$
and
$$
E(X^2)+E(Y^2)=\frac1{16}.
$$
Using the bounds above,
$$
X^2\leq \frac4{27}X,
\qquad
Y^2\leq \frac14Y.
$$
Therefore
$$
E(X^2)+E(Y^2)
\leq
\frac4{27}E(X)+\frac14E(Y).
$$
Since $E(Y)=\frac14-E(X)$, this becomes
$$
E(X^2)+E(Y^2)
\leq
\frac1{16}-\frac{11}{108}E(X).
$$
But the left side is exactly $1/16$, so $E(X)=0$. Hence $X=0$ almost surely, and then equality forces $Y=1/4$ almost surely.

Thus the $Q=1$ slice is the orbit $(1,1,0)$, and the $Q=\frac54$ slice is the orbit $(1,\frac12,\frac12)$. The conditional $P$ contribution is
$$
\frac12\cdot0+\frac12\cdot\frac14=\frac18,
$$
which matches $E(P\mid R=2)$.

Step 6: Convert back to $s$-coordinates and write the measure

The relation
$$
z=\frac{s^2}{2-s^2}
$$
is equivalent to
$$
z(2-s^2)=s^2.
$$
Thus
$$
2z=s^2(1+z),
$$
and therefore
$$
s^2=\frac{2z}{1+z}.
$$
So
$$
z=0\Rightarrow s=0,\qquad z=1\Rightarrow s^2=1,
$$
$$
z=\frac12\Rightarrow s^2=\frac23,
$$
$$
z=\frac13\Rightarrow s^2=\frac12,
$$
and
$$
z=\frac14\Rightarrow s^2=\frac25.
$$

The global weights are
$$
R=1:\quad \frac27\cdot\left(\frac14,\frac12,\frac14\right)
=\left(\frac1{14},\frac17,\frac1{14}\right),
$$
$$
R=\frac32:\quad \frac27,
$$
and
$$
R=2:\quad \frac27\cdot\left(\frac12,\frac12\right)
=\left(\frac17,\frac17\right).
$$
Together with the origin mass $1/7$, the unique extremal measure is
$$
\frac17\mathcal U_{(0,0,0)}
+\frac1{14}\mathcal U_{(1,0,0)}
+\frac17\mathcal U_{(\sqrt{\frac23},\sqrt{\frac23},0)}
+\frac1{14}\mathcal U_{(\frac1{\sqrt2},\frac1{\sqrt2},\frac1{\sqrt2})}
+\frac17\mathcal U_{(1,1,0)}
+\frac17\mathcal U_{(1,\sqrt{\frac23},\sqrt{\frac23})}
+\frac27\mathcal U_{(1,\sqrt{\frac25},\sqrt{\frac25})}.
$$
The equality conditions in the nonnegative-polynomial arguments make the maximizer unique.

Final Answer: $\boxed{\frac17\mathcal U_{(0,0,0)}+\frac1{14}\mathcal U_{(1,0,0)}+\frac17\mathcal U_{(\sqrt{\frac23},\sqrt{\frac23},0)}+\frac1{14}\mathcal U_{(\frac1{\sqrt2},\frac1{\sqrt2},\frac1{\sqrt2})}+\frac17\mathcal U_{(1,1,0)}+\frac17\mathcal U_{(1,\sqrt{\frac23},\sqrt{\frac23})}+\frac27\mathcal U_{(1,\sqrt{\frac25},\sqrt{\frac25})}}$

---

## Answer

$\frac17\mathcal U_{(0,0,0)}+\frac1{14}\mathcal U_{(1,0,0)}+\frac17\mathcal U_{(\sqrt{\frac23},\sqrt{\frac23},0)}+\frac1{14}\mathcal U_{(\frac1{\sqrt2},\frac1{\sqrt2},\frac1{\sqrt2})}+\frac17\mathcal U_{(1,1,0)}+\frac17\mathcal U_{(1,\sqrt{\frac23},\sqrt{\frac23})}+\frac27\mathcal U_{(1,\sqrt{\frac25},\sqrt{\frac25})}$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Exact symbolic expression

---

## Concepts (1-5)

- Orbit measures under permutation and sign symmetries
- Moment bounds from nonnegative polynomials
- Slicing a probability measure by a symmetric statistic
- Finite support recovery from zero slack
- Reconstructing roots from elementary symmetric functions
