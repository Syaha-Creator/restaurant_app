import 'package:flutter/material.dart';
import 'package:resto_app/core/themes/spacing.dart';
import 'package:resto_app/core/themes/typography.dart';
import 'package:resto_app/models/restaurant.dart';
import 'package:resto_app/ui/widgets/rating_widget.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final VoidCallback? onTap;

  const RestaurantCard(
      {super.key, required this.restaurant, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
          horizontal: AppSpacing.marginMedium,
          vertical: AppSpacing.marginSmall),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.paddingMedium),
          child: Row(
            children: [
              Hero(
                tag: 'restaurant_image_${restaurant.id}',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSpacing.radiusSmall),
                  child: Image.network(
                    'https://restaurant-api.dicoding.dev/images/small/${restaurant.pictureId}',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.gapMedium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: AppTypography.headlineSmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: AppSpacing.gapSmall),
                    Text(
                      restaurant.city,
                      style: AppTypography.bodyMedium,
                    ),
                    const SizedBox(height: AppSpacing.gapSmall),
                    RatingWidget(rating: restaurant.rating),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
