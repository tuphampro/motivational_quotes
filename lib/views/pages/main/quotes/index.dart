import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'example_buttons.dart';
import 'example_candidate_model.dart';
import 'example_card.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<QuotesPage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<QuotesPage> {
  final AppinioSwiperController controller = AppinioSwiperController();

  List<ExampleCard> cards = [];

  @override
  void initState() {
    _loadCards();
    super.initState();
  }

  void _loadCards() {
    for (ExampleCandidateModel candidate in candidates) {
      cards.add(
        ExampleCard(
          candidate: candidate,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: AppinioSwiper(
              unlimitedUnswipe: true,
              controller: controller,
              unswipe: _unswipe,
              cards: cards,
              onSwipe: _swipe,
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 50,
                bottom: 40,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 80,
              ),
              swipeLeftButton(controller),
              const SizedBox(
                width: 20,
              ),
              swipeRightButton(controller),
              const SizedBox(
                width: 20,
              ),
              unswipeButton(controller),
            ],
          )
        ],
      ),
    );
  }

  void _swipe(int index, AppinioSwiperDirection direction) {}

  void _unswipe(bool unswiped) {
    if (unswiped) {
    } else {}
  }
}
