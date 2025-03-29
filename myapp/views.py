from rest_framework import generics
from django_filters.rest_framework import DjangoFilterBackend
from .models import Item
from .serializers import ItemSerializer


class ItemListCreateAPIView(generics.ListCreateAPIView):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer

    # Add filtering capabilities:
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ["name", "category"]


# Retrieve, Update, and Delete a single Item
class ItemRetrieveUpdateDestroyAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer
