Precis Trial_Theory;
	uses Integer_Theory;

Theorem Test_Integer_1:
	For all m,n : Z,
		m = n or not(m <= n) or not(n <= m);

Theorem Test_Integer_2:
	For all m,n : Z,
		m <= n or n + 1 <= m; 

end Trial_Theory;
