# ise: アダプト（仮称）多言語化用ベクトルタイルデータ
# 対象
[多言語表記の地図](https://www.gsi.go.jp/kihonjohochousa/multilingual.html)。

ここにファイル仕様と変換規則がある。多言語化の変換自体はコードで行っているようだ。以下、ファイル仕様と変換規則は読んだ前提で記述している。

# 目的
センスの良い設計のベクトルデータへの変換を試みることを通じて、地名への理解を深める。

# ソースデータについて
## テンプレート URL 及び mokuroku
タイルの URL は https://maps.gsi.go.jp/xyz/experimental_multil/{z}/{x}/{y}.geojson である。 mokuroku は存在しないので、タイルの所在情報については、例えば注記の mokuroku である https://maps.gsi.go.jp/xyz/experimental_anno/mokuroku.csv.gz を援用すれば良いであろう。

## 属性
### 種別情報
ソースデータでは ftCode と annoCtg の組み合わせでデータ種別を作り出しているが、ベクトルタイルではなるべく単純なレイヤに分離し直した方が良い。

FIXME

# 変換について

FIXME

# 出典
- 国土地理院データの出典は国土地理院。
- `img/ise.jpg` は[メトロポリタン美術館](https://www.metmuseum.org/art/collection/search/54774?searchField=All&amp;sortBy=Relevance&amp;ft=tales+of+ise&amp;offset=0&amp;rpp=20&amp;pos=20)のパブリックドメインのデータ。
