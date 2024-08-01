Precis Natural_Number_Ext_Theory;
	uses Natural_Number_Theory;

Definition max(m,n:N):N = {{m if (n <= m); n otherwise;}};

Corollary max_1:
	For all n:N,
	max(0,n) = n;
	
Corollary max_2:
	For all m,n:N,
	max(m,n) = max(n,m);
	
Corollary max_3:
	For all m,n,p:N,
	max(max(m,n),p) = max(m,max(n,p));
	
Corollary max_4:
	For all m,n:N,
	m <= max(m,n);
	
Corollary max_5:
	For all m,n:N,
	(m <= n) = (max(m,n) = n);
	
Corollary max_6:
	For all m,n,p:N,
	max(m,n) + p = max(m + p, n + p);
	
	
Definition min(m,n:N):N = {{m if (m <= n); n otherwise;}};

Corollary Min_1:
	For all n:N,
	min(0,n) = 0;
	
Corollary Min_2:
	For all m,n,p:N,
	min(m,n) = min(n,m);
	
Corollary Min_3:
	For all m,n,p:N,
	min(min(m,n),p) = min(m,min(n,p));
	
Corollary Min_4:
	For all m,n:N,
	min(m,n) <= m;
	
Corollary Min_5:
	For all m,n:N,
	min(m,n) <= max(m,n);
	
Corollary Min_6:
	For all m,n:N,
	(m <= n) = (min(m,n) = m);
	
Corollary Min_7:
	For all m,n,p:N,
	min(m,n) + p = min(m + p, n + p);
		
end Natural_Number_Ext_Theory;