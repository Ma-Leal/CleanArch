package usecase

import "github.com/devfullcycle/20-CleanArch/internal/entity"

type ListOrderUseCase struct {
	OrderRepository entity.OrderRepositoryInterface
}

func NewListOrderUseCase(orderRepository entity.OrderRepositoryInterface) *ListOrderUseCase {
	return &ListOrderUseCase{OrderRepository: orderRepository}
}

func (l *ListOrderUseCase) Execute() ([]OrderOutputDTO, error) {

	orders, err := l.OrderRepository.GetAll()
	if err != nil {
		return []OrderOutputDTO{}, err
	}

	var ordersOutputDTO []OrderOutputDTO
	for _, order := range orders {
		o := OrderOutputDTO{
			ID:         order.ID,
			Price:      order.Price,
			Tax:        order.Tax,
			FinalPrice: order.FinalPrice,
		}
		ordersOutputDTO = append(ordersOutputDTO, o)

	}
	return ordersOutputDTO, nil
}
