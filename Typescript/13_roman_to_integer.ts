function romanToInt(s: string): number {
  let res: number = 0;
  let convert: { [key: string]: number } = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  };
  for (let x: number = 0; x < s.length; x++) {
    if (convert[s[x]] < convert[s[x + 1]]) {
      res -= convert[s[x]];
    } else {
      res += convert[s[x]];
    }
  }

  return res;
}
