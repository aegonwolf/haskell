bit f[7];
bit m[7];

f[0] = 1;
f[1] = 1;
f[2] = 1;
m[4] = 1;
m[5] = 1;
m[6] = 1;


bit success;
success = 0;

inline move (frog, male) 
{
	if
	 ::male -> left(frog)
	 ::else -> right(frog)
	fi
}

inline jumpleft(frog, i)
{
	males[frog] = 0
	males[frog - i] = 1
}
inline jumpright(frog, i)
{
	males[frog] = 0
	males[frog + i] = 1
}

inline left(frog)
{
	if
	 ::frog == 0 -> skip
	 :: males[frog -1] == 0 -> jumpleft(frog, 1)
	 :: males[frog -2] == 0 -> jumpleft(frog, 2)
	 :: else -> skip
    fi
}

inline right(frog)
{
	if
	 ::frog == 0 -> skip
	 :: males[frog + 1] == 0 -> jumpright(frog, 1)
	 :: males[frog + 2] == 0 -> jumpright(frog, 2)
	 :: else -> skip
    fi
}

inline isSuccess()
{
	m[0]&&m[1]&&m[2] && f[4]&&f[5]&&f[6]
	success = 1
}

init
{
    int i = 1
    do
      :: success -> assert(false);
      :: m[3] -> move(3, 1)
      :: m[4] -> move(4, 1)
      :: m[5] -> move(5, 1)
      :: m[6] -> move(6, 1)
      :: f[0] -> move(0, 1)
      :: f[1] -> move(1, 1)
      :: f[2] -> move(2, 1)
      :: f[3] -> move(3, 1)
    od
    }
}
