# GNU sed BRE: \+ means "one or more."

s|^.* \(/[^ ]\+\) HTTP.*$|\1|p
