class Solution {
  String longestCommonPrefix(List<String> strs) {
    // strs.sort((a, b) => a.length.compareTo(b.length));
    
    String prefix = strs[0];

    for (int i = 1; i < strs.length; i++) {
      while (!strs[i].startsWith(prefix)) {
        prefix = prefix.substring(0, prefix.length - 1);

        if (prefix.isEmpty) return "";
      }
    }

    return prefix;
  }
}