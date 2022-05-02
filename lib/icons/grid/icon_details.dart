import '../../gallery_exporter.dart';

class IconDetails extends StatelessWidget {
  const IconDetails({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: galleryBlack,
      appBar: AppBar(
        // title: const Text('Icon Details'),
        leading: CloseButton(
          color: galleryWhite,
          onPressed: onTap,
        ),
        automaticallyImplyLeading: false,
        actions: const [
          //  actions like share will be here
        ],
      ),
      body: Container(
        color: galleryBlack,
        child: Center(
          child: Text(
            'Icon Details',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
