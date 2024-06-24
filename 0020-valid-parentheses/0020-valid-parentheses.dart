final Map<String, String> map = {
    ')':'(',
    '}':'{',
    ']':'[',
};

class Solution {
  bool isValid(String s) {
    final List<String> stack = [];
    final brackets = s.split('');

    for(var bracket in brackets) {
        if(map.containsValue(bracket)) {
            stack.add(bracket);
            continue;
        }
        if(stack.isEmpty) {
            stack.add(bracket);
        } else {
            if(map[bracket] == stack.last) {
                stack.removeLast();
                continue;
            }
        }
    }

    return stack.isEmpty;
  }
}