part of '../services.dart';

class _ServiceCard extends StatefulWidget {
  final ServicesUtils service;

  const _ServiceCard({required this.service});

  @override
  State<_ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMobileOrTab =
        Responsive.isMobile(context) || Responsive.isTablet(context);
    final cardColor = isHover ? pinkpurple : theme.serviceCard;
    final textColor = isHover ? whiteColor : theme.textColor;
    final descColor = isHover ? whiteColor.withValues(alpha: 0.8) : theme.textColor;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (hover) => setState(() => isHover = hover),
      child: Container(
        width: Responsive.isTablet(context) ? 400 : 300,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          gradient: cardColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [isHover ? primaryColorShadow : blackColorShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.service.icon,
              height: 60,
              color: widget.service.icon == 'assets/icons/apple_android.svg'
                  ? Colors.white
                  : null,
            ),
            Space.y(3.w)!,
            Text(
              widget.service.name,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor),
            ),
            Space.y(1.w)!,
            Text(
              widget.service.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: descColor,
                fontWeight: FontWeight.w200,
                fontSize: 13,
              ),
            ),
            Space.y(2.w)!,
            if (Responsive.isDesktop(context))
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.service.tool
                    .map((tool) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('🛠 '),
                    Expanded(
                      child: Text(
                        tool,
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  ],
                ))
                    .toList(),
              ),
            if (isMobileOrTab)
              SizedBox(
                height: 80,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: widget.service.tool.length,
                  itemBuilder: (context, index) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🛠 '),
                      Expanded(
                        child: Text(
                          widget.service.tool[index],
                          style: TextStyle(color: textColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
