class Solution {
  bool isPalindrome(int x) {
    if (x.isNegative) return false;
    return int.parse(x.toString().split('').reversed.join()) == x;
  }
}