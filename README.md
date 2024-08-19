# News App

Used API and packages very Important to Know it 

## Widget I Used To

- For Sure Used Container Widget to put all data of News in the same Container and make Model For it <br>
- To Make List Scrollable Used ListView and Make Direction Horizontal For Category <br>
- CustomScrollView Widget Thats Make All Page Scrollable and it is good for Performance But it take Slivers Widgets Not A Normal Widget Like This
  ```
  CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
  ]
  ```
  <br>
- SliverList Better Than Used ListView To Make it Scrollable and used ShrinkWrap That Widget Better For CustomScrollView and good in Performance
  ```
  SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: double,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: CustomNews(
              articles: articles[index], // that is Object i Created u Need To See Full Code to Got it 
            ),
          );
  ```
<br>

- FutureBuilder Widget Very Important u Need to Know It this Widget Used to Future Request Good to use With API Request <br>
-  Basic Widget Like Text, Image, GestureDetector, Padding, Center and ClipRRect. <br>

<br>


## Package I Used To

- webview_flutter: ^4.8.0 to open wepview of news type it in StatefulWidget
  ```
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }
  ```
- dio: ^5.6.0 To Got Requist form API
  ```
  Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=$type&apiKey=urKey');
      Map<String, dynamic> jsonData = response.data; // to get data in map 
      List<dynamic> articles = jsonData['articles']; // to get data i want it in list 
  ```
<br>

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
