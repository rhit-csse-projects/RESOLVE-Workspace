Precis Integer_Ext_Theory;
	uses Integer_Theory;

Definition (i: Z) - (j: Z): Z = i + (-j);

Definition max(m,n:Z):Z = {{m if (n <= m); n otherwise;}};

Corollary max_1:
	For all m,n:Z,
	max(m,n) = max(n,m);
	
Corollary max_2:
	For all m,n,p:Z,
	max(max(m,n),p) = max(m,max(n,p));
	
Corollary max_3:
	For all n:Z,
	max(n,n) = n;
	
Corollary max_4:
	For all m,n:Z,
	m <= max(m,n);
	
Corollary max_5:
	For all m,n:Z,
	(m <= n) = (max(m,n) = n);
	
Corollary max_6:
	For all m,n,p:Z,
	max(m,n) + p = max(m + p, n + p);
	
Corollary max_7:
	For all m,n,p:Z,
	max(m,n) * |p| = max(m * |p|, n * |p|);
	
Definition min(m,n:Z):Z = {{m if (m <= n); n otherwise;}};

Corollary Min_1:
	For all m,n:Z,
	min(m,n) = min(n,m);
	
Corollary Min_2:
	For all m,n,p:Z,
	min(min(m,n),p) = min(m,min(n,p));
	
Corollary Min_3:
	For all n:Z,
	min(n,n) = n;
	
Corollary Min_4:
	For all m,n:Z,
	min(m,n) <= m;
	
Corollary Min_5:
	For all m,n:Z,
	min(m,n) <= max(m,n);
	
Corollary Min_6:
	For all m,n:Z,
	(m <= n) = (min(m,n) = m);
	
Corollary Min_7:
	For all m,n,p:Z,
	min(m,n) + p = min(m + p, n + p);
	
Corollary Min_8:
	For all m,n,p:Z,
	min(m,n) * |p| = min(m * |p|, n + |p|);

Corollary Min_9:
	For all m,n:Z,
	min(m,n) = - max(-m,-n);
	
end Integer_Ext_Theory;