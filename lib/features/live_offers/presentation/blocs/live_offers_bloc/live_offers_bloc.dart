import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/live_offers/domain/entities/live_offer_entity.dart';
import 'package:magic_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';
import 'package:magic_rewards/features/live_offers/domain/usecases/get_live_offers_usecase.dart';

part 'live_offers_event.dart';

@injectable
class LiveOffersBloc
    extends Bloc<LiveOffersEvent, BaseState<LiveOffersEntity>> {
  final GetLiveOffersUseCase getLiveOffersUseCase;

  LiveOffersBloc(this.getLiveOffersUseCase)
      : super(const BaseState<LiveOffersEntity>.initial()) {
    on<FetchLiveOffersEvent>(_getLiveOffers);
  }

  int _page = 0;
  final int _length = 10;
  LiveOffersEntity _liveOffersEntity = LiveOffersEntity(liveOffers: const []);

  FutureOr<void> _getLiveOffers(FetchLiveOffersEvent event, emit) async {
    if (event.refresh) {
      _page = 0;
      _liveOffersEntity = LiveOffersEntity(liveOffers: const []);
    }
    if (_page == 0) emit(state.loading());
    final result = await getLiveOffersUseCase.call(
        params: GetLiveOffersParameters(length: _length, page: _page));
    result.fold((l) => emit(state.error(l)), (r) {
      _page++;
      _liveOffersEntity = LiveOffersEntity(
          liveOffers: _liveOffersEntity.liveOffers + r.liveOffers);
      return emit(state.success(_liveOffersEntity));
    });
  }
}
