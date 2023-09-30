/// 設定された距離を移動したら、[callback]が実行される関数
///
/// 実装前なので[meter]/5秒経つと[callback]が実行される
void measureMeter(int meter, Function() callback) {
  Future.delayed(Duration(seconds: meter ~/ 5), callback);
}
