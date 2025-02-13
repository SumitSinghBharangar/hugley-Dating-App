import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Model class for profile data
class Profile {
  final String name;
  final String age;
  final String imageUrl;

  Profile({
    required this.name,
    required this.age,
    required this.imageUrl,
  });
}

class DatingAppHome extends StatefulWidget {
  const DatingAppHome({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DatingAppHomeState createState() => _DatingAppHomeState();
}

class _DatingAppHomeState extends State<DatingAppHome> {
  late List<Profile> profiles;

  @override
  void initState() {
    super.initState();
    // Initialize with 10 sample profiles
    profiles = [
      Profile(
        name: "Charlotte",
        age: "25",
        imageUrl:
            "https://images.unsplash.com/photo-1705497809183-56145c029fe5?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2V4eSUyMHdvbWFufGVufDB8fDB8fHww",
      ),
      Profile(
        name: "Emma",
        age: "23",
        imageUrl:
            "https://images.unsplash.com/photo-1596337635980-8d2243ea07fb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHNleHklMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D",
      ),
      Profile(
        name: "Sophia",
        age: "27",
        imageUrl:
            "https://images.unsplash.com/photo-1709841405932-821dc255d35c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHNleHklMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D",
      ),
      Profile(
        name: "Isabella",
        age: "24",
        imageUrl:
            "https://images.unsplash.com/photo-1506795660198-e95c77602129?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fHNleHklMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D",
      ),
      Profile(
        name: "Olivia",
        age: "26",
        imageUrl:
            "https://images.unsplash.com/photo-1515161318750-781d6122e367?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fHNleHklMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D",
      ),
      Profile(
        name: "Ava",
        age: "22",
        imageUrl:
            "https://plus.unsplash.com/premium_photo-1661297485356-2497102824d0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njl8fHNleHklMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D",
      ),
      Profile(
        name: "Mia",
        age: "28",
        imageUrl:
            "https://plus.unsplash.com/premium_photo-1671464388983-c7ba04a5179f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTI1fHxzZXh5JTIwd29tYW58ZW58MHx8MHx8fDA%3D",
      ),
      Profile(
        name: "Luna",
        age: "25",
        imageUrl:
            "https://plus.unsplash.com/premium_photo-1668165257976-13771a2fea0e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTI5fHxzZXh5JTIwd29tYW58ZW58MHx8MHx8fDA%3D",
      ),
      Profile(
        name: "Harper",
        age: "23",
        imageUrl:
            "https://img.freepik.com/free-photo/young-fashion-woman-with-long-brunette-hair-relaxing-near-balcony-modern-apartment-fashionable-blue-jeans-black-t-shirt-red-lips-friendly-smile-good-morning-home-beautiful-model-smiling_197531-2238.jpg?ga=GA1.1.1394306160.1735556730&semt=ais_hybrid",
      ),
      Profile(
        name: "Sofia",
        age: "26",
        imageUrl:
            "https://img.freepik.com/free-photo/sensual-brunette-model-fashion-swimsuit-posing-terrace_149155-4497.jpg?ga=GA1.1.1394306160.1735556730&semt=ais_hybrid",
      ),
    ];
  }

  void _removeProfile(int index) {
    setState(() {
      profiles.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/young-caucasian-brunette-rocks-beach-with-closed-eyes_181624-37395.jpg?semt=ais_hybrid'),
            radius: 20,
          ),
        ),
        title: Text(
          "Hugley",
          style: TextStyle(
            fontSize: 24,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: profiles.isEmpty
          ? Center(
              child: Text(
                "No more profiles to show!",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            )
          : Stack(
              children: profiles.asMap().entries.map((entry) {
                int idx = (entry.key) % 10;
                Profile profile = entry.value;
                return Positioned.fill(
                  child: DatingCard(
                    name: profile.name,
                    age: profile.age,
                    imageUrl: profile.imageUrl,
                    onLike: () => _removeProfile(idx),
                    onDislike: () => _removeProfile(idx),
                    isFront: idx == profiles.length - 1,
                  ),
                );
              }).toList(),
            ),
    );
  }
}

class DatingCard extends StatefulWidget {
  final String name;
  final String age;
  final String imageUrl;
  final VoidCallback onLike;
  final VoidCallback onDislike;
  final bool isFront;

  const DatingCard({
    Key? key,
    required this.name,
    required this.age,
    required this.imageUrl,
    required this.onLike,
    required this.onDislike,
    required this.isFront,
  }) : super(key: key);

  @override
  _DatingCardState createState() => _DatingCardState();
}

class _DatingCardState extends State<DatingCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Offset _dragOffset = Offset.zero;
  double _dragStartX = 0;
  double _dragStartY = 0;
  bool _isDragging = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPanStart(DragStartDetails details) {
    if (!widget.isFront) return;
    setState(() {
      _isDragging = true;
      _dragStartX = details.globalPosition.dx;
      _dragStartY = details.globalPosition.dy;
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    if (!_isDragging) return;

    setState(() {
      _dragOffset = Offset(
        details.globalPosition.dx - _dragStartX,
        details.globalPosition.dy - _dragStartY,
      );
    });
  }

  void _onPanEnd(DragEndDetails details) {
    if (!_isDragging) return;

    final screenWidth = MediaQuery.of(context).size.width;
    final dragDistance = _dragOffset.dx;
    final swipeThreshold = screenWidth * 0.4;

    if (dragDistance.abs() > swipeThreshold) {
      if (dragDistance > 0) {
        widget.onLike();
      } else {
        widget.onDislike();
      }
    } else {
      // Reset position with animation
      setState(() {
        _dragOffset = Offset.zero;
      });
    }

    setState(() {
      _isDragging = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final swipeProgress = _dragOffset.dx / screenWidth;
    final rotationAngle = swipeProgress * 0.4;
    final scale = widget.isFront ? 1.0 : 0.9;
    final opacity = widget.isFront ? 1.0 : 0.7;

    return Positioned.fill(
      child: GestureDetector(
        onPanStart: _onPanStart,
        onPanUpdate: _onPanUpdate,
        onPanEnd: _onPanEnd,
        child: Transform.scale(
          scale: scale,
          child: Transform.translate(
            offset: _dragOffset,
            child: Transform.rotate(
              angle: rotationAngle,
              child: Opacity(
                opacity: opacity,
                child: Stack(
                  children: [
                    // Main Card
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            // Background image
                            Positioned.fill(
                              child: Image.network(
                                widget.imageUrl,
                                fit: BoxFit.cover,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                              ),
                            ),
                            // Gradient overlay
                            Positioned.fill(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.8),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Swipe Indicators
                            if (_isDragging && widget.isFront)
                              Positioned(
                                top: 40,
                                left: _dragOffset.dx > 0 ? 20 : null,
                                right: _dragOffset.dx < 0 ? 20 : null,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: _dragOffset.dx > 0
                                          ? Colors.green
                                          : Colors.red,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    _dragOffset.dx > 0 ? 'LIKE' : 'NOPE',
                                    style: TextStyle(
                                      color: _dragOffset.dx > 0
                                          ? Colors.green
                                          : Colors.red,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            // User info
                            Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${widget.name}, ${widget.age}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  if (widget.isFront)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _ActionButton(
                                          icon: Icons.close,
                                          color: Colors.red,
                                          onTap: widget.onDislike,
                                        ),
                                        _ActionButton(
                                          icon: Icons.favorite,
                                          color: Colors.green,
                                          onTap: widget.onLike,
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          icon,
          size: 32,
          color: color,
        ),
      ),
    );
  }
}
