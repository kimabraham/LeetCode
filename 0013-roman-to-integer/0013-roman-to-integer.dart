final Map<String, int> datas = {
  'I': 1,
  'V': 5,
  'X': 10,
  'L': 50,
  'C': 100,
  'D': 500,
  'M': 1000,
};

class Solution {
  int romanToInt(String s) {
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      int currentNumber = datas[s[i]]!;
      int nextNumber = i < s.length - 1 ? datas[s[i + 1]]! : 0;

      if (currentNumber < nextNumber) {
        result -= currentNumber;
      } else {
        result += currentNumber;
      }
    }
    return result;
  }
}