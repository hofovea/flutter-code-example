import 'package:flutter/cupertino.dart';
import 'package:code_example/common/ui_kit/text_fields/styleable_text_editing_controller/text_part_style_definition.dart';
import 'package:code_example/common/ui_kit/text_fields/styleable_text_editing_controller/text_part_style_definitions.dart';

class StyleableTextEditingController extends TextEditingController {
  final TextPartStyleDefinitions styles;

  Pattern get combinedPattern => styles.createCombinedPatternBasedOnStyleMap();

  StyleableTextEditingController({
    String? text,
    required List<TextPartStyleDefinition> textPartStyles,
  })  : styles = TextPartStyleDefinitions(definitionList: textPartStyles),
        super(text: text);

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final List<InlineSpan> textSpanChildren = <InlineSpan>[];

    text.splitMapJoin(
      combinedPattern,
      onMatch: (Match match) {
        final String? textPart = match.group(0);

        if (textPart == null) return '';

        final TextPartStyleDefinition? styleDefinition =
            styles.getStyleOfTextPart(
          textPart,
          text,
        );

        if (styleDefinition == null) return '';

        _addTextSpan(
          textSpanChildren,
          textPart,
          style?.merge(styleDefinition.style),
        );

        return '';
      },
      onNonMatch: (String text) {
        _addTextSpan(textSpanChildren, text, style);

        return '';
      },
    );

    return TextSpan(style: style, children: textSpanChildren);
  }

  void _addTextSpan(
    List<InlineSpan> textSpanChildren,
    String? textToBeStyled,
    TextStyle? style,
  ) {
    textSpanChildren.add(
      TextSpan(
        text: textToBeStyled,
        style: style,
      ),
    );
  }
}
