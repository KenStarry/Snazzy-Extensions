part of snazzy_extensions;

extension TextExtensions on Text {
  /// Add Hyperlinks to text
  Text szAddHyperLinks(
      {List<String>? hyperLinkTexts,
      Function(String word)? onHyperlinkClicked}) {
    final originalString = data;
    final originalStringArray = originalString?.split(' ');

    final text = hyperLinkTexts == null
        ? this
        : Text.rich(TextSpan(
            children: originalStringArray
                ?.map((word) => TextSpan(
                    text: '$word ',
                    recognizer: !hyperLinkTexts.contains(word)
                        ? null
                        : TapGestureRecognizer()
                      ?..onTap = () => onHyperlinkClicked!(word),
                    style: TextStyle(
                        color: hyperLinkTexts.contains(word)
                            ? Colors.blue
                            : style?.color)))
                .toList()));

    return text;
  }

  /// Add Text Marquee
}
