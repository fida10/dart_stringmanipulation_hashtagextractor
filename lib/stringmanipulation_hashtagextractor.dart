/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/stringmanipulation_hashtagextractor_base.dart';

// TODO: Export any libraries intended for clients of this package.

/*

Given a string containing multiple hashtags, write a Dart function 
to extract all the hashtags from the string.

Example:

String text = "Loving the #sunny weather in #California #travel";

Extract the hashtags and print them as a list.
 */

//split into individual words
//first character is #, check with regex
//if so, add to list

List<String> extractAllHashtags(String stringWithHashtags) {
  // final iterableMatches = RegExp(r'#[^\s]+').allMatches(stringWithHashtags);
  // List<String> ans = [];
  // for(var indivMatch in iterableMatches) {
  //   ans.add(indivMatch.group(0)!);
  // }
  // return ans;

  return RegExp(r'#[^\s]+')
      .allMatches(stringWithHashtags)
      .map((e) => e.group(0)!)
      .toList();
}

void main() {
  print(extractAllHashtags("Loving the #sunny weather in #California #travel"));
}
