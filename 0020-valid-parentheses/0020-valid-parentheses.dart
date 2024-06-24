    final Map<String, String> map = {
        ')':'(',
        '}':'{',
        ']':'[',
    };


class Solution {
  bool isValid(String s) {
    final List<String> stack = [];

    for (var bracket in s.split('')) {
      if (map.containsValue(bracket)) {
        stack.add(bracket);
      } else if (stack.isNotEmpty && map[bracket] == stack.last) {
        stack.removeLast();
      } else {
        return false;
      }
    }

    return stack.isEmpty;
  }
}