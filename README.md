# xlf2html-saxon

## Description
xlf 差分ツール

## Usage
1. **xlf2html-saxon.exe** を起動する
2. **[xlf file(before)]** に翻訳後の xlf ファイルを指定する
3. **[xlf file(after)]** にチェック後の xlf ファイルを指定する
4. **[xsl file]** に使用するスタイルシート（xsl）を指定する
5. **[Run]** をクリックする
6. 処理完了後に **YYYYMMDDhhmmss_xliff_diff.xlsx** のようなファイルが本ツールと同じ場所にできる

## Requires
- Windows
- pyinstaller で xlf2html-saxon.py を exe にする
- Saxon (「**D:\\tool\\saxonb9-1-0-8j\\saxon9.jar**」を参照できること)
- 本ツールと同じ場所に **xliff_diff.xlsx** があること
