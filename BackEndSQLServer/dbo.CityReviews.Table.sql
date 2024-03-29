﻿USE [cityguidedb]
GO
/****** Object:  Table [dbo].[CityReviews]    Script Date: 2019-11-30 11:29:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityReviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ReviewCategory] [varchar](255) NOT NULL,
	[ReviewItemId] [int] NOT NULL,
	[ReviewRating] [varchar](255) NULL DEFAULT (NULL),
	[ReviewText] [varchar](max) NULL DEFAULT (NULL)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CityReviews] ON 

INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (1, N'Events', 1, N'Excellent', N'This was a great venue')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (2, N'Events', 1, N'Good', N'I enjoyed it.')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (3, N'Events', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (4, N'Events', 1, N'Average', N'Not a great deal to enjoy.')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (5, N'Events', 2, N'Excellent', N'Great venue, and lots to do at the event')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (6, N'Events', 2, N'Good', N'Nice crowd, I enjoyed it')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (7, N'Events', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (11, N'Museums', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (12, N'Museums', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (13, N'Museums', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (14, N'Museums', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (15, N'Museums', 1, N'Excellent', N'Great museum, amazing galleries especially enjoyed Guernica. ')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (16, N'Museums', 1, N'Excellent', N'Again a great museum')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (17, N'Museums', 2, N'Good', N'Great museum , but impossible to see in a day.')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (18, N'Museums', 1, N'Good', N'Enjoyed it')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (19, N'Restaurants', 3, N'Great', N'Loved this place')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (20, N'Restaurants', 3, N'High', N'Afgfdds')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (21, N'Events', 3, N'Great', N'awesome music')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (22, N'Restaurants', 3, N'Lovely chairs', N'I liked the chairs.')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (23, N'Events', 3, N'Lovely chairs', N'Warm')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (24, N'Events', 3, N'Good', N'Works')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (25, N'Events', 2, N'Nice Place', N'I really enjoyed the event. ')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (26, N'Museums', 1, N'Good', N'Enjoyed the Picasso ')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (27, N'Events', 1, N'Excellent', N'A really good venue')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (28, N'Restaurants', 1, N'Good', N'Nice food')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (29, N'Events', 1, N'Brilliant', N'It was awesome')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (30, N'Events', 1, N'Great ', N'Really enjoyed this')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (8, N'Events', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (9, N'Events', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (10, N'Events', 1, N'Average', N'A very average site. There wasnt much to keep my interest to be honest')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (31, N'Sites', 1, N'Good', N'I enjoyed myself at this place')
INSERT [dbo].[CityReviews] ([ReviewID], [ReviewCategory], [ReviewItemId], [ReviewRating], [ReviewText]) VALUES (31, N'Shops', 1, N'Excellent', N'Really Nice Shop')
SET IDENTITY_INSERT [dbo].[CityReviews] OFF
